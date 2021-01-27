package com.cos.busanWeb.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.busanWeb.domain.user.User;
import com.cos.busanWeb.domain.user.dto.JoinReqDto;
import com.cos.busanWeb.domain.user.dto.LoginReqDto;
import com.cos.busanWeb.service.UserService;
import com.cos.busanWeb.util.Script;


@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		UserService userService = new UserService();
		
		// 회원가입 폼
		// Http://localhost8080/busanWeb/user?cmd=joinForm
		if(cmd.equals("joinForm")) {
			RequestDispatcher dis = 
					request.getRequestDispatcher("user/joinForm.jsp");
					dis.forward(request, response);
		} else if(cmd.equals("join")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			JoinReqDto dto = new JoinReqDto();
			dto.setUsername(username);
			dto.setPassword(password);
			dto.setEmail(email);
			dto.setAddress(address);
			System.out.println("회원가입 : "+dto);
			int result = userService.회원가입(dto);
			if(result == 1) {
				RequestDispatcher dis = 
						request.getRequestDispatcher("user/loginForm.jsp");
						dis.forward(request, response);
			}else {
				Script.back(response,"회원가입 실패");
			}
		} 
		
		// 유저네임 중복체크 폼
		// Http://localhost8080/busanWeb/user?cmd=usernameCheck
		else if(cmd.equals("usernameCheck")) {
			BufferedReader br = request.getReader();
			String username = br.readLine();
			System.out.println(username);
			int result = userService.유저네임중복체크(username);
			PrintWriter out = response.getWriter();
			if(result == 1) {
				out.print("ok"); 
			} else {
				out.print("fail");
			}
			out.flush();
		} 
		
		// 로그인 폼
		// Http://localhost8080/busanWeb/user?cmd=loginForm
		else if(cmd.equals("loginForm")) {
			RequestDispatcher dis = 
					request.getRequestDispatcher("user/loginForm.jsp");
					dis.forward(request, response);
		} else if(cmd.equals("login")) {
			// 서비스 호출
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			LoginReqDto dto = new LoginReqDto();
			dto.setUsername(username);
			dto.setPassword(password);
			User userEntity = userService.로그인(dto);
			if(userEntity != null) {
				HttpSession session = request.getSession();
				session.setAttribute("principal", userEntity);

				RequestDispatcher dis = 
						request.getRequestDispatcher("index.jsp");
						dis.forward(request, response);
			} else {
				Script.back(response, "로그인 실패");
			}
		} else if (cmd.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
	}
}
