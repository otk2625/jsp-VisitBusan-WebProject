package com.cos.busanWeb.web;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;
import com.cos.busanWeb.service.BoardService;
import com.cos.busanWeb.util.Script;

//http://localhost:8080/blog/board
@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		
		BoardService boardService = new BoardService();
		
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
			
			List<sightDto> list = boardService.조회수순으로뿌리기(page);
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
			if(dto == null) {
				Script.back(response, "상세보기에 실패하였습니다.");
			} else {
				request.setAttribute("detail", list);
				request.setAttribute("dto", dto);
				RequestDispatcher dis = request.getRequestDispatcher("board/detailSight.jsp");
				dis.forward(request, response);	
			}
		} 
		
		else if (cmd.equals("like")) {
			int id = Integer.parseInt(request.getParameter("id"));
			 
			SightDetailDto dto = boardService.좋아요(id); 
			List<Item> list = boardService.글상세뿌리기(id);
			
			if(dto == null) {
				Script.back(response, "좋아요에 실패하였습니다.");
			} else {
				request.setAttribute("detail", list);
				request.setAttribute("dto", dto);
				RequestDispatcher dis = request.getRequestDispatcher("board/detailSight.jsp");
				dis.forward(request, response);	
			}
			
		}
	}

}