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
		min-height: 200px;
	}
	footer {
		height: 80px
	}
	#info	 {
		border-color: green;
		border-width: 2px;
		border-style: solid;
		height: 250px
	}
	#title {
		font-size: 50px;
		font-weight: 100;
	}
	.singer {
		font-size: 20px
	}
	header > a, header > a:hover {
		text-decoration:none;
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

<%
	Map<String, Object> target = null;
	
	// 1) 목록에서 클릭(id)
	if (request.getParameter("id") != null) {
		int id = Integer.parseInt(request.getParameter("id"));
		for (Map<String, Object> music : musicList) {
			if (id == (int)(music.get("id"))) {
				target = music;
				break;
			}
		}
	}
	
	// 2) 상단에서 검색
	String search = request.getParameter("search");
	if (search != null) {
		for (Map<String, Object> music : musicList) {
			if (music.get("title").equals(search)) {
				target = music;
				break;
			}
		}
	}

//	String search = "";
//	if (request.getParameter("search") == null) {
//		search = "";
//	} else {
//		search = request.getParameter("search");
//	}
//	
//	int id = 0;
//	if (request.getParameter("id") == null) {
//		id = 0;
//	} else {
//		id = Integer.parseInt(request.getParameter("id"));
//	}
//	
//	Map<String, Object> target = null;
//	
//	for (Map<String, Object> music : musicList) {
//		if (id == (int)(music.get("id")) || search.equals(music.get("title"))) {
//			target = music;
//			break;
//		}
//	}
//	
//	if (target == null) {
//		return;
//	}
%>
	<div id="warp" class="container">
		<header class="d-flex justify-content-start align-items-center">
			<a href="/lesson02/quiz10.jsp"><h1 class="text-success mr-5">Melong</h1></a>
			<form method="get" action="/lesson02/quiz10_1.jsp" class="col-4">
				<div class="input-group">
				  <input type="text" name="search" class="form-control" value="<%= request.getParameter("id") == null ? target.get("title") : "" %>">
				  <div class="input-group-append">
				    <button class="btn btn-secondary btn-info text-white" type="submit">검색</button>
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
		<section class="contents mt-3">
			<h3>곡 정보</h3>
			<div id="info" class="w-100 mb-5">
				<div class="m-2 d-flex">
					<div class="mr-4"><image src="<%= target.get("thumbnail") %>" alt="앨범 사진" width="230px"></div>
					<div>
						<div id="title"><%= target.get("title") %></div>
						<div class="singer text-success font-weight-bold mb-4"><%= target.get("singer") %></div>
						<div class="d-flex text-secondary">
							<div>
								<div>앨범</div>
								<div>재생시간</div>
								<div>작곡가</div>
								<div>작사가</div>
							</div>
							<div class="ml-4">
								<div><%= target.get("album") %></div>
								<div><%= (int)target.get("time") / 60 %> : <%= (int)target.get("time") % 60 %></div>
								<div><%= target.get("composer") %></div>
								<div><%= target.get("lyricist") %></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<h3>가사</h3>
			<hr>
			<div>가사 정보 없음</div>
			<div class="mt-5">
				<hr class="m-0">
			</div>
		</section>
		<footer class="mt-2">
			<small class="text-secondary">Copyright 2021. melong All Rights Reserved</small>
		</footer>
	</div>
</body>
</html>