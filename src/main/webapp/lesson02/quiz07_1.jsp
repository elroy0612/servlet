<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-center">검색결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<Map<String, Object>> list = new ArrayList<>();
				    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
				    list.add(map);
				    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
				    list.add(map);
				    
				    String keyword = request.getParameter("keyword");
				    String pointFilter = request.getParameter("pointFilter");
				    for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
				<%
						Iterator<String> iter = list.get(i).keySet().iterator();
						while(iter.hasNext()) {
							String key = iter.next();
							if (list.get(i).get("menu").equals(keyword)) {
								if (pointFilter != null && pointFilter.equals("true")) {
									double point = (double)list.get(i).get("point");
									if (point > 4) {
				%>
					<td><%= list.get(i).get(key) %></td>
				<%
									}
								} else {
				%>
					<td><%= list.get(i).get(key) %></td>
				<%
								}
							}
						}
				%>
				</tr>
				<%
				    }
				%>
			</tbody>
		</table>
	</div>
</body>
</html>