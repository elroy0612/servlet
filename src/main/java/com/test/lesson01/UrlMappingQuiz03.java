package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat sfd = new SimpleDateFormat("yyyy/MM/dd HH-mm-ss");
		
		out.println("<html><head><title></title></head><body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("기사입력시간: " + sfd.format(now));
		out.println("<hr>끝");
		out.println("</body></html>");
		
	}
	
}
