package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	
	private final Map<String, String> userMap = new HashMap<>() {
		{
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>사용자 정보 확인</title></head><body>");
		if (id.equals(userMap.get("id")) == false) {
			out.print("id가 일치하지 않습니다.");
		} else if (password.equals(userMap.get("password")) == false) {
			out.print("password가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 반갑습니다.");
		}
		out.print("</body></html>");
		
	}
}
