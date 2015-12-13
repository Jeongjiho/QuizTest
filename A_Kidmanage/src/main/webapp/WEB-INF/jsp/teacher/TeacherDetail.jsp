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
  <div align="right" style="font-size: 12px; margin-right:15%; margin-top:5%">
<jsp:include page="/Header.jsp" />
</div> 
<body>
	<div id="main">
		<!-- begin header -->
		<header>
			<div id="logo"
				style="margin-bottom: 0%; margin-top: 2%; font-size: 11px;">
				<h1>
					<a href="../kid/main.do">다인이</a>유치원
				</h1>
			</div>
			<nav style="position: relative; z-index: 1;">
				<ul class="sf-menu" id="nav" style="margin-bottom: 5%;">
					<li class="selected" style="font-size: 12px;"><a
						href="../board/list.do">공지사항</a></li>
					<li style="font-size: 12px;"><a href="#">우리 아이들</a>
						<ul>
							<li style="font-size: 12px;"><a
								href="../kidManage/c1List.do">나비반</a></li>
							<li style="font-size: 12px;"><a
								href="../kidManage/c2List.do">호랑이반</a></li>
							<li style="font-size: 12px;"><a
								href="../kidManage/c3List.do">남자반</a></li>
						</ul></li>
					<li style="font-size: 12px;"><a href="#">앨범</a>
						<ul>
							<li><a href="gallery.do">나비반</a></li>
							<li><a href="portfolio_two.html">호랑이반</a></li>
							<li><a href="portfolio_two.html">남자반</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>
		<!-- end header -->

		<c:if test="${not empty teacher}">
			<form id='form1' action='teacherUpdate.do' method='post'
				enctype="multipart/form-data">
				<table class="flatTable">

					<tr class="headingTr">
						<th>이름</th>
						<td class="titleTd"><input type='text' value='${teacher.name}'
							name='name'> <input type="hidden" name="member_uid"
							value='${loginUser.m_uid}'></td>
					</tr>

          <tr class="headingTr">
            <th>담당 반</th>
            <td class="titleTd">
            <select name="cid">
                <option value="">반 선택</option>
                <option value="나비반">나비반</option>
                <option value="호랑이반">호랑이반</option>
                <option value="남자반">남자반</option>
            </select></td>
          </tr>

					<tr class="headingTr">
						<th>전화번호</th>
            <td class="titleTd"><input type='text'
              value='${teacher.tel}' name='tel'></td>					
          </tr>

					<tr class="headingTr">
						<th>사진</th>
						<td><img width='130' height='130'
							src='../file/${(empty teacher.photo)?"anonymous.png":teacher.photo}'><br>
							<input type='file' name='photofile'> <input type='hidden'
							name='photo' value='${teacher.photo}'></td>
					</tr>
				</table>
				<br>
				<p style="margin-left: 100px;">
					<a style="margin-left: 30px; font-size: medium;" onclick="Update()">변경</a>
				</p>
			</form>
		</c:if>
		<c:if test="${empty teacher}">
			<p>존재하지 않는 정보입니다.</p>
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
    
    function Update() {
        $("#form1").submit();
      }
  </script>
</html>
