package com.cos.busanWeb.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {
	public static void back(HttpServletResponse resp,String msg) throws IOException {
		PrintWriter out=resp.getWriter();
		out.println("<script>");
		out.println("alert(`"+msg+"`);");
		out.println("history.back();");
		out.println("</script>");
		out.flush();
	}
	
	public static void responseData(HttpServletResponse response, String jsonData) {
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(jsonData); //ajax done에 값 전달
			out.flush(); // 버퍼 비우기
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
