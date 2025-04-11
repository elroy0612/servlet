<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
		double value = Double.parseDouble(request.getParameter("value"));
		String[] types = request.getParameterValues("type");
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h4><%= value %></h4><hr>
		<h4>
		<% 
			for (String type : types) {
				if (type.equals("인치")) {
					out.print(value * 0.39 + " in");
				}
			}
		%>
		</h4>
		<h4>
		<% 
			for (String type : types) {
				if (type.equals("야드")) {
					out.print(value * 0.0109361 + " yd");
				}
			}
		%>
		</h4>
		<h4>
		<% 
			for (String type : types) {
				if (type.equals("피트")) {
					out.print(value * 0.0328084 + " ft");
				}
			}
		%>
		</h4>
		<h4>
		<% 
			for (String type : types) {
				if (type.equals("미터")) {
					out.print(value * 0.01 + " m"); 
				}
			}
		%>
		</h4>
	</div>
</body>
</html>