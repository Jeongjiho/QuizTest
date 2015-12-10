<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">


 
<div class="card2">
<c:if test="${not empty loginUser}">  
    
	<div class="pen-title2" >
	<h3>${loginUser.id}님이 접속중 입니다.</h3>
	</div>
	<div class="footer"><a style="margin-right:10px" href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
	<a style="margin-right:40px" href="../member/detail.do?id=${loginUser.id}">내정보보기</a></div>
</c:if>
<c:if test="${empty loginUser}">
<div class="footer">
  <a style="font-size:20px; margin-right:30px"href="${pageContext.request.contextPath}/member/login.do">로그인</a></div>
</c:if>
</div>
