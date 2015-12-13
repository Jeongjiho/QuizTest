<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/board.css" type='text/css'>

<title>다인이 유치원</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<!-- stylesheets -->
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/portfolio_one.css" rel="stylesheet" type="text/css" />
<link href="../css/light.css" rel="stylesheet" type="text/css" />
<!-- we only want the thunbnails to display when javascript is disabled -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	document.write('<style>.noscript { display: none; }</style>');
</script>
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="../js/modernizr-1.5.min.js"></script>

<meta charset='UTF-8'>
<title></title>
</head>
<body>
	<div id="main">
		<!-- begin header -->
		<header>
			<div id="logo"
				style="margin-bottom: 0%; margin-top: 2%; font-size: 11px;">
				<h1>
					<a href="login.do">다인이</a>유치원
				</h1>
			</div>
			<nav style="position: relative; z-index: 1;">
				<ul class="sf-menu" id="nav" style="margin-bottom: 5%;">
					<li class="selected" style="font-size: 12px;"><a
						href="../board/list.do">공지사항</a></li>
					<li style="font-size: 12px;"><a href="#">우리 아이들</a>
						<ul>
							<li style="font-size: 12px;"><a href="../kidManage/list.do">나비반</a></li>
							<li style="font-size: 12px;"><a href="portfolio_two.html">호랑이반</a></li>
							<li style="font-size: 12px;"><a href="portfolio_two.html">남자반</a></li>
						</ul></li>
					<li style="font-size: 12px;"><a href="#">앨범</a>
						<ul>
							<li><a href="gallery.do">나비반</a></li>
							<li><a href="portfolio_two.html">호랑이반</a></li>
							<li><a href="portfolio_two.html">남자반</a></li>
						</ul></li>
					<li style="font-size: 12px;"><a href="blog.html">식단표</a></li>
				</ul>
			</nav>
		</header>
		<!-- end header -->

		<c:if test="${not empty board}">
			<form id='form1' action='update.do' method='post'
				enctype="multipart/form-data">
				<table class="flatTable">
					<tr class="headingTr">
						<th>번호</th>
						<td class="titleTd"><input type='text' value='${board.no}'
							name='no' readonly></td>
					</tr>
					<tr class="headingTr">
						<th>제목</th>
						<td class="titleTd"><input type='text' value='${board.title}'
							name='title'></td>
					</tr>
					<tr class="headingTr">
						<th>작성자</th>
						<td class="titleTd">${board.writer}</td>
					</tr>
					<tr class="headingTr">
						<th>내용</th>
						<td><textarea rows='10' cols='60' name='content'>${board.content}</textarea></td>
					</tr>
					<tr>
						<th>등록일</th>
						<td>${board.createdDate}</td>
					</tr>
					<tr>
						<th>암호</th>
						<td><input id='inputPassword' type='password' name='pwd'></td>
					</tr>
					<tr>
						<th>파일</th>
						<td><a href='../attachfile/${board.attachFile}'>${board.attachFile}</a><br>
							<input type='file' name='file'> <input type='hidden'
							name='attachFile' value='${board.attachFile}'></td>
					</tr>
				</table>
				<p>
					<button name='update' type='submit' class='button1'>변경</button>
					<a id='aDelete' href='delete.do?no=${board.no}' class='button2'
						onclick='deleteBoard()'>삭제</a>
				</p>
			</form>
		</c:if>
		<c:if test="${empty board}">
			<p>해당 번호의 게시물을 찾을 수 없습니다.</p>
		</c:if>
	</div>
</body>

<script>
	$("#open").click(function() {
		$("#sForm").toggleClass("open");
	});

	$("#close").click(function() {
		$("#sForm").toggleClass("open");
	});

	$(".controlTd").click(function() {
		$(this).children(".settingsIcons").toggleClass("display");
		$(this).children(".settingsIcon").toggleClass("openIcon");
	});
</script>

<script>
    function deleteBoard() {
      var password = document.getElementById('inputPassword').value;
      var href = document.getElementById('aDelete').href + "&pwd="
          + password;
      document.getElementById('aDelete').href = href;
    }
  </script>
</html>
