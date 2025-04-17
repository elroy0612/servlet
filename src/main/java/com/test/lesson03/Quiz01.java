package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz01")
public class Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into real_estate\r"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "value"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null);";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate` "
				+ "order by id desc "
				+ "limit 10;";
		try {
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
				out.print("매물주소: ");
				out.print(res.getString("address"));
				out.print(", 면적: ");
				out.print(res.getInt("area"));
				out.print(", 타입: ");
				out.println(res.getString("type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
	}
}
