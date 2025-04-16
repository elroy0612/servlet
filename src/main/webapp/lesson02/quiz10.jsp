<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<style>
	header {
		height: 100px;
	}
	li > a, li > a:hover {
		height: 40px;
		color: #000;
		font-size: 15px;
		font-weight: bold;
		text-decoration:none;
	}
	.contents {
		min-height: 500px;
	}
	footer {
		height: 80px
	}
	#singer {
		border-color: green;
		border-width: 2px;
		border-style: solid;
		height: 200px
	}
	
</style>
</head>
<body>
<%
	//아티스트 정보 
	
	 Map<String, Object> artistInfo = new HashMap<>();
	 artistInfo.put("name", "아이유");
	 artistInfo.put("debute", 2008);
	 artistInfo.put("agency", "EDAM엔터테인먼트");
	 artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
	
	
	//아이유 노래 리스트 
	 List<Map<String, Object>> musicList = new ArrayList<>();
	
	 Map<String, Object> musicInfo = new HashMap<>();
	 musicInfo.put("id", 1);
	 musicInfo.put("title", "팔레트");
	 musicInfo.put("album", "Palette");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	 musicInfo.put("time", 217);
	 musicInfo.put("composer", "아이유");
	 musicInfo.put("lyricist", "아이유");
	 musicList.add(musicInfo);
	
	 musicInfo = new HashMap<>();
	 musicInfo.put("id", 2);
	 musicInfo.put("title", "좋은날");
	 musicInfo.put("album", "Real");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	 musicInfo.put("time", 233);
	 musicInfo.put("composer", "이민수");
	 musicInfo.put("lyricist", "김이나");
	 musicList.add(musicInfo);
	
	 musicInfo = new HashMap<>();
	 musicInfo.put("id", 3);
	 musicInfo.put("title", "밤편지");
	 musicInfo.put("album", "palette");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	 musicInfo.put("time", 253);
	 musicInfo.put("composer", "제휘,김희원");
	 musicInfo.put("lyricist", "아이유");
	 musicList.add(musicInfo);
	
	 musicInfo = new HashMap<>();
	 musicInfo.put("id", 4);
	 musicInfo.put("title", "삐삐");
	 musicInfo.put("album", "삐삐");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	 musicInfo.put("time", 194);
	 musicInfo.put("composer", "이종훈");
	 musicInfo.put("lyricist", "아이유");
	 musicList.add(musicInfo);
	
	 musicInfo = new HashMap<>();
	 musicInfo.put("id", 5);
	 musicInfo.put("title", "스물셋");
	 musicInfo.put("album", "CHAT-SHIRE");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	 musicInfo.put("time", 194);
	 musicInfo.put("composer", "아이유,이종훈,이채규");
	 musicInfo.put("lyricist", "아이유");
	 musicList.add(musicInfo);
	
	 musicInfo = new HashMap<>();
	 musicInfo.put("id", 6);
	 musicInfo.put("title", "Blueming");
	 musicInfo.put("album", "Love poem");
	 musicInfo.put("singer", "아이유");
	 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	 musicInfo.put("time", 217);
	 musicInfo.put("composer", "아이유,이종훈,이채규");
	 musicInfo.put("lyricist", "아이유");
	 musicList.add(musicInfo);
%>
	<div id="warp" class="container">
		<header class="d-flex justify-content-start align-items-center">
			<h1 class="text-success mr-5">Melong</h1>
			<form method="get" action="/lesson02/quiz10_1.jsp" class="col-4">
				<div class="input-group">
				  <input type="text" id="search" name="search" class="form-control">
				  <div class="input-group-append">
				    <button id="btn" class="btn btn-secondary btn-info text-white" type="submit">검색</button>
				  </div>
				</div>
			</form>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div id="singer" class="w-100">
				<div class="m-2 d-flex">
					<div class="mr-4"><image src="<%= artistInfo.get("photo") %>" alt="아이유" width="180px"></div>
					<div>
						<h3 class="font-weight-bold"><%= artistInfo.get("name") %></h3>
						<div><%= artistInfo.get("agency") %></div>
						<div><%= artistInfo.get("debute") %> 데뷔</div>
					</div>
				</div>
			</div>
			<h3>곡 목록</h3>
			<table class="table text-center m-0">
				<thead>
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (Map<String, Object> inventory : musicList) {
					%>
					<tr>
						<td><%= inventory.get("id") %></td>
						<td><a href="/lesson02/quiz10_1.jsp?id=<%= inventory.get("id") %>"><%= inventory.get("title") %></a></td>
						<td><%= inventory.get("album") %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<div class="mt-5">
				<hr class="m-0">
			</div>
		</section>
		<footer class="pt-3">
			<small class="text-secondary">Copyright 2021. melong All Rights Reserved</small>
		</footer>
	</div>
</body>
<script>
	$(function() {
		$("#btn").on("click", fuction() {
			let search = $("#search").val();
			<%
				for (Map<String, Object> inventory : musicList) {
			%>
			if (search == <%= inventory.get("title") %>)
			<%
				}
			%>
			alret("해당 노래는 없습니다.")
		})
	});
</script>
</html>