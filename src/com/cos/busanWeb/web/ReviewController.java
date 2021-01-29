package com.cos.busanWeb.web;


import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.busanWeb.domain.CommonRespDto;
import com.cos.busanWeb.domain.review.ReviewDao;
import com.cos.busanWeb.domain.review.dto.ReviewCountRepDto;
import com.cos.busanWeb.domain.review.dto.ReviewDto;
import com.cos.busanWeb.domain.review.dto.ReviewReqDto;
import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;
import com.cos.busanWeb.service.BoardService;
import com.cos.busanWeb.service.ReviewService;
import com.cos.busanWeb.util.Script;
import com.google.gson.Gson;

//http://localhost:8080/blog/board
@WebServlet("/review")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReviewController() {
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
		
		ReviewService reviewService = new ReviewService();
		
		if(cmd.equals("save")) {
			BufferedReader br = request.getReader();
			String reqData = br.readLine();
			Gson gson = new Gson();
			ReviewReqDto dto = gson.fromJson(reqData, ReviewReqDto.class);
			
			System.out.println("dto : " + dto);

			int result = reviewService.댓글쓰기(dto);
			List<ReviewDto> review = reviewService.댓글목록(dto.getSightId());
			
			
			
			// 공통응답Dto를 사용해서 통신값 전달
			CommonRespDto<List<ReviewDto>> commonRespDto = new CommonRespDto<>();
			commonRespDto.setStatusCode(result); // 1, -1
			commonRespDto.setData(review);

			String responseData = gson.toJson(commonRespDto);
			System.out.println("responseData : " + responseData);
			Script.responseData(response, responseData);
		}
	}

}