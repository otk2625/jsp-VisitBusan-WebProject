package com.cos.busanWeb.web;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.busanWeb.config.SightInsertDB;
import com.cos.busanWeb.domain.CommonRespDto;
import com.cos.busanWeb.domain.review.dto.ReviewCountRepDto;
import com.cos.busanWeb.domain.review.dto.ReviewDto;
import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.SightRepDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;
import com.cos.busanWeb.service.BoardService;
import com.cos.busanWeb.service.ReviewService;
import com.cos.busanWeb.util.Script;
import com.google.gson.Gson;

//http://localhost:8080/blog/board
@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SightInsertDB sightInsert = new SightInsertDB();
	public BoardController() {
		
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		sightInsert.db저장();
		BoardService boardService = new BoardService();
		ReviewService reviewService = new ReviewService();
		
		if(cmd.equals("main")) {
			List<Item> list = boardService.뿌리기(1,12);
			List<Item> list2 = boardService.뿌리기(5,8);
			
			request.setAttribute("list2", list2);
			request.setAttribute("list", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/mainBoard2.jsp");
			dispatcher.forward(request, response);
			
//			response.sendRedirect("board/mainBoard2.jsp");
		}else if(cmd.equals("sightForm2")) {

			int page = Integer.parseInt(request.getParameter("page"));
			
			List<SightRepDto> list = boardService.조회수순으로뿌리기(page);
			int 개수 = (int) Math.ceil(boardService.목록개수() / 16);
			
			System.out.println(개수);
			
			if (page == 개수) {
				request.setAttribute("nextEnd", true);
			}

			if (page == 0) {
				request.setAttribute("preEnd", true);
			}
			
			request.setAttribute("sightlist", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/sightForm2.jsp");
			dispatcher.forward(request, response);
			
		}else if(cmd.equals("sightForm2ByReview")) {

			int page = Integer.parseInt(request.getParameter("page"));
			
			List<SightRepDto> list = boardService.리뷰순으로뿌리기(page);
			int 개수 = (int) Math.ceil(boardService.목록개수() / 16);
			
			System.out.println(개수);
			
			if (page == 개수) {
				request.setAttribute("nextEnd", true);
			}

			if (page == 0) {
				request.setAttribute("preEnd", true);
			}
			
			request.setAttribute("sightlist", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/sightForm2.jsp");
			dispatcher.forward(request, response);
			
		}
		
		else if(cmd.equals("detail")) {
			int id = Integer.parseInt(request.getParameter("id"));
			
			SightDetailDto dto = boardService.글상세보기(id); 
			List<Item> list = boardService.글상세뿌리기(id);
			List<ReviewDto> reviews = reviewService.댓글목록(id);
			
			ReviewCountRepDto count  = reviewService.댓글개수(id);
			System.out.println(count.get개수()+", "+count.get평균());
			request.setAttribute("count", count.get개수());
			request.setAttribute("avg", count.get평균());
			
			
			
			request.setAttribute("star5", reviewService.별점개스(5,id));
			request.setAttribute("star4", reviewService.별점개스(4,id));
			request.setAttribute("star3", reviewService.별점개스(3,id));
			request.setAttribute("star2", reviewService.별점개스(2,id));
			request.setAttribute("star1", reviewService.별점개스(1,id));
			
			
			
			if(dto == null) {
				Script.back(response, "상세보기에 실패하였습니다.");
			} else {
				request.setAttribute("reviews", reviews);
				request.setAttribute("detail", list);
				request.setAttribute("dto", dto);
				RequestDispatcher dis = request.getRequestDispatcher("board/detailSight.jsp");
				dis.forward(request, response);	
			}
		} 
		
		else if (cmd.equals("like")) {
			Gson gson = new Gson();
			System.out.println("이게 : " + request.getParameter("id")); 
			int id = Integer.parseInt(request.getParameter("id"));
//			SightDetailDto dto = boardService.좋아요(id); 
//			List<Item> list = boardService.글상세뿌리기(id);
			int like = boardService.like(id); 
			
			CommonRespDto<List<ReviewDto>> commonRespDto = new CommonRespDto<>();
			commonRespDto.setStatusCode(like);
			String responseData = gson.toJson(commonRespDto);
			System.out.println("responseData : " + responseData);
			Script.responseData(response, responseData);
//			if(dto == null) {
//				Script.back(response, "좋아요에 실패하였습니다.");
//			} else {
//				request.setAttribute("detail", list);
//				request.setAttribute("dto", dto);
//				RequestDispatcher dis = request.getRequestDispatcher("board/detailSight.jsp");
//				dis.forward(request, response);	
//			}
			
		}else if (cmd.equals("search")) {
			int page = Integer.parseInt(request.getParameter("page"));  // 최초 : 0, Next : 1, Next: 2

			String keyword = (String)request.getParameter("keyword");
			System.out.println(keyword);
			
			List<sightDto> list = boardService.검색뿌리기(page, keyword);
			int 개수 = (int) Math.ceil(boardService.검색목록개수(keyword) / 16);
			
			request.setAttribute("searchOn", true);	
			
			if (page == 개수) {
				request.setAttribute("nextEnd", true);
			}

			if (page == 0) {
				request.setAttribute("preEnd", true);
			}
			request.setAttribute("sightlist", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/sightForm2.jsp");
			dispatcher.forward(request, response);
			}
	}

}