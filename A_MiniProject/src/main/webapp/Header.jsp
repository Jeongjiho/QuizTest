<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        


<html>
<head>
  <meta charset='UTF-8'>
  <title>회원-상세정보</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

 

<c:if test="${not empty loginUser}">        
	</div>${loginUser.id}
	<div class="footer"><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
</c:if>
<c:if test="${empty loginUser}">
  <a href="${pageContext.requestl.contextPath}/member/login.do">로그인</a>
</c:if>


<a href="detail.do?id=${loginUser.id}">내정보보기</a>
</div>




</body>
</html>