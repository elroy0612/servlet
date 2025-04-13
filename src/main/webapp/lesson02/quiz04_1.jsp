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
		<h3><%= value %>cm</h3><hr>
		<h2>
			<% 
				if (types != null) {
					for (String type : types) { // [인치, 야드 ... ]
						if (type.equals("인치")) {
							double inch = value * 0.393701;
							out.print(inch + " in");
						} else if (type.equals("야드")) {
							double yard = value * 0.0109361;
							out.print(yard + "yd<br>");
						} else if (type.equals("피트")) {
							double feet = value * 0.0328084;
							out.print(feet + "ft<br>");							
						} else if (type.equals("미터")) {
							double meter = value / (double)100;
							out.print(meter + "m<br>");
						}
					}
				}
			%>
		</h2>
</body>
</html>