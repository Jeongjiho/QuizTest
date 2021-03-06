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
              <li style="font-size: 12px;"><a href="../kidManage/c1List.do">나비반</a></li>
              <li style="font-size: 12px;"><a href="../kidManage/c2List.do">호랑이반</a></li>
              <li style="font-size: 12px;"><a href="../kidManage/c3List.do">남자반</a></li>
            </ul></li>
					<li style="font-size: 12px;"><a href="#">앨범</a>
						<ul>
							<li><a href="../kid/gallery1.do">나비반</a></li>
							<li><a href="portfolio_two.html">호랑이반</a></li>
							<li><a href="portfolio_two.html">남자반</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>
		<!-- end header -->

		<table class="flatTable">
			<tr class="titleTr">
				<td class="titleTd"></td>
				<td colspan="3"></td>
        <c:if test="${loginUser.type == 'teacher'}">
          <td id="open" class="plusTd button"></td>
        </c:if>			</tr>
			<tr class="headingTr">
				<td>이름</td>
				<td>나이</td>
				<td>성별</td>
				<td>출석</td>
			</tr>

      <c:forEach var="kidManage" items="${kidManages}">
        <tr>
          <td><a href='detail.do?no=${kidManage.no}'>${kidManage.name}</a></td>
          <td>${kidManage.age}</td>
          <td>${kidManage.gender}</td>
          <c:if test="${loginUser.type == 'teacher'}">
            <td><input type="button" class="btn-default" name="check1"
              onclick="changeCheck(${kidManage.no},${kidManage.check1})"
              value="${(kidManage.check1 == 0)?'등원':'하원'}"></td>
          </c:if>
          <c:if test="${loginUser.type == 'parent'}">
            <td>${(kidManage.check1 == 0)?'등원':'하원'}</td>
          </c:if>
        </tr>
      </c:forEach>
    </table>

		<div id="sForm" class="sForm sFormPadding"
			style="position: absolute; z-index: 2;">
			<span class="button close" id="close"><img
				src="http://i.imgur.com/nnzONel.png" alt="X" class="" /></span>
			<h2 class="title">새 원아 등록</h2>

			<form action="../kidManage/add.do" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<th>이름</th>
						<td><input type="text" id="Name" name="name"
							required="required" /></td>
					</tr>

					<tr>
						<th>나이</th>
						<td><input type="text" id="Age" name="age"
							required="required" /></td>
					</tr>

					<tr>
						<th>성별</th>
						<td><select name="gender">
								<option value="">선택</option>
								<option value="남자">남자</option>
								<option value="여자">여자</option>
						</select></td>
					</tr>

					<tr>
						<th>반</th>
						<td><select name="cid">
								<option value="">반 선택</option>
								<option value="c1">나비반</option>
								<option value="c2">호랑이반</option>
								<option value="c3">남자반</option>
						</select></td>
					</tr>

					<tr>
						<th>사진</th>
						<td><input type='file' name='photofile'></td>
					</tr>

					<tr>
						<td align="center"><br>
							<button type='submit'>등록</button>
						<td>
					</tr>
				</table>
			</form>
		</div>


	</div>
	
	
	
	   <footer>
      <p style="font-size: 15px;">
        Copyright &copy; 2015 다인이유치원. All Rights Reserved. <a
          href="http://www.css3templates.co.uk">Design from
          갓지현(feat. 지호)</a>
      </p>
      <p>
        <img src="../images/twitter.png" alt="twitter" />&nbsp;<img
          src="../images/facebook.png" alt="facebook" />&nbsp;<img
          src="../images/rss.png" alt="rss" />
      </p>
    </footer>
</body>


<script>
function changeCheck(no,status) {
  if(status == 1) {
     change = 0;
  } else {
    change = 1;
    }
  
  $.ajax( {
    
    url : '../kidManage/edit.do',
    type : 'POST',
    dataType: 'JSON',
    data : {
    no : no,
    change : change
    }, success: function(){
      location.href = "/list.do";
    }});
  location.reload();
}
</script>

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
