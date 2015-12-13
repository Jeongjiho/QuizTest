<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">



<div class="card2">
	<c:if test="${not empty loginUser}">
		<div class="pen-title2">
			<h3>${common.name}님 환영합니다!</h3>
		</div>
		<div class="footer">
			<a style="margin-right: 10px"
				href="${pageContext.request.contextPath}/join/logout.do">로그아웃</a>
			<c:if test="${loginUser.type == 'parent'}">
				<a style="margin-right: 40px"
					href="../join/parentDetail.do?member_uid=${loginUser.m_uid}">내정보보기</a>
			</c:if>
      <c:if test="${loginUser.type == 'teacher'}">
        <a style="margin-right: 40px"
          href="../join/teacherDetail.do?member_uid=${loginUser.m_uid}">내정보보기</a>
      </c:if>
      
		</div>
	</c:if>

	<c:if test="${empty loginUser}">
		<div class="footer">
			<a style="font-size: 15px; margin-right: 30px"
				href="${pageContext.request.contextPath}/kid/login.do">LOGIN</a>
		</div>
	</c:if>
</div>
