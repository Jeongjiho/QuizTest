<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
</head>
<body align="center">
<style type="text/css">
div {
margin: 30px;
width: : 500px;
}

   #left {
                text-align: left;
            }
            #right {
                text-align: right;
                color: fuchsia;
                font-size: xx-large;
            }
            #justify {
                text-align: justify;
            }
            #center {
                text-align: center;
            }

 </style>
 <div style="position: relative;">
<jsp:include page="/Header.jsp"/>
</div>
<table border='1'>
  <tr>
    <th align="center">사진</th>
    <th align="center">아이디</th>
  </tr>
<c:forEach var="member" items="${members}">    
  <tr>
    <td align="center"><img height="60" width="44" src='../file/s-${(empty member.photo)?"1.jpeg":member.photo}'></td>
     <td align="center"><a href='detail.do?id=${member.id}'/>${member.id}</td>
  </tr>
</c:forEach> 
</table>


</body>
</html>    