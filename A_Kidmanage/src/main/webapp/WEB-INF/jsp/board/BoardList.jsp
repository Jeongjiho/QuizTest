
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

		<table class="flatTable">
			<tr class="titleTr">
				<td class="titleTd"></td>
				<td colspan="4"></td>
				<td id="open" class="plusTd button"></td>
			</tr>
			<tr class="headingTr">
			<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>등록날짜</td>
			</tr>

			<c:forEach var="board" items="${boards}">
				<tr>
					<td>${board.no}</td>
					<td><a href='detail.do?no=${board.no}'>${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.createdDate}</td>
				</tr>
			</c:forEach>

		</table>

		<div id="sForm" class="sForm sFormPadding"
			style="position: absolute; z-index: 2;">
			<span class="button close" id="close"><img
				src="http://i.imgur.com/nnzONel.png" alt="X" class="" /></span>
			<h2 class="title">새 글 등록</h2>

			<form action="../board/add.do" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<th>Title</th>
						<td><input type="text" id="Title" name="title"
							required="required" /></td>
					</tr>

					<tr>
						<th>Writer</th>
						<td><input type="text" id="Writer" name="writer"
							required="required" /></td>
					</tr>

					<tr>
						<th>Content</th>
						<td><textarea rows='10' id='Content' name='content' cols='46'
								style="font-size: 14px;" placeholder="Content"></textarea></td>
					</tr>

					<tr>
						<th>Password</th>
						<td><input type="password" id="Password" name="pwd"
							required="required" /></td>
					</tr>

					<tr>
						<th>File</th>
						<td><input type='file' id='File' name="file"
							style="font-size: 18px" /></td>
					</tr>

					<tr>
						<td align="center"><br>
							<button type='submit'>전송</button>
						<td>
					</tr>
				</table>
			</form>
		</div>


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
</html>
