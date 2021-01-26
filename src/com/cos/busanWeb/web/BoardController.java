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
import com.cos.busanWeb.service.BoardService;

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
			
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/sightForm2.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
	}

}
