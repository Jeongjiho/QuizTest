<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>회원-상세정보</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

<div class="pen-title">
<h1>내정보 상세보기</h1>
</div>

<div class="container">
    <div class="card"></div>
    <div class="card">
<form id='form1' action='update.do' method='post'
      enctype="multipart/form-data">
      
      
            <div class="input-container">
  <input type='text' name='name' value='${member.name}' required="required">
      <label for="name">name</label>
        <div class="bar"></div>
      </div>


<p style="align:center; font-size:20px;margin-left:60px;">ID</p>
<div class="input-container">
  <input type='text' name='id' value='${member.id}' readonly >
  <div class="bar"></div>
      </div>

<div class="input-container">
  <input type="password" name='pwd' required="required">
        <label for="pwd">pwd</label>
        <div class="bar"></div>
      </div>
  
  
  <div class="input-container">
  <td><input type='text' name='tel' value='${member.tel}'></td>
          <label for="tel">tel</label>
        <div class="bar"></div>
      </div>
  
  
    <div class="input-container">
  <td><input type='text' name='email' value='${member.email}'></td>
            <label for="email">email</label>
        <div class="bar"></div>
      </div>
  
  
    <div class="input-container">
  <td><input type='text' name='address' value='${member.address}'></td>
            <label for="address">address</label>
        <div class="bar"></div>
      </div>



<h1 style="align:center; font-size:20px;margin-left:60px;">Photo</h1><br><br>
 <div style="margin-left: 125px">
 <img width='200' height='300' src='../file/${(empty member.photo)?"1.jpeg":member.photo}'></div><br><br>
      <div class="input-container">
     <input type='file' name='photofile' style="font-size:18px">
      <input type='hidden' name='photo' value='${member.photo}'>
      </div>

<div class="button-container">
<button name='update' type='submit' class='button1'>변경</button></dir>
<div class="footer"><a href='delete.do?id=${member.id}' class='button2'>탈퇴하기</a>

</form>












<style type="text/css">
button1 {
   border: 1px solid #ffffff;
   background: #ffffff;
   background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#ffffff));
   background: -webkit-linear-gradient(top, #ffffff, #ffffff);
   background: -moz-linear-gradient(top, #ffffff, #ffffff);
   background: -ms-linear-gradient(top, #ffffff, #ffffff);
   background: -o-linear-gradient(top, #ffffff, #ffffff);
   background-image: -ms-linear-gradient(top, #ffffff 0%, #ffffff 100%);
   padding: 11.5px 23px;
   -webkit-border-radius: 14px;
   -moz-border-radius: 14px;
   border-radius: 14px;
   -webkit-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #ffffff 0 1px 0;
   color: #a3a3a3;
   font-size: 20px;
   font-family: helvetica, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button1:hover {
   border: 1px solid #ffffff;
   text-shadow: #ffffff 0 1px 0;
   background: #f3ff99;
   background: -webkit-gradient(linear, left top, left bottom, from(#b2ffd6), to(#f3ff99));
   background: -webkit-linear-gradient(top, #b2ffd6, #f3ff99);
   background: -moz-linear-gradient(top, #b2ffd6, #f3ff99);
   background: -ms-linear-gradient(top, #b2ffd6, #f3ff99);
   background: -o-linear-gradient(top, #b2ffd6, #f3ff99);
   background-image: -ms-linear-gradient(top, #b2ffd6 0%, #f3ff99 100%);
   color: #000000;
   }
.button1:active {
   text-shadow: #91b2c7 0 1px 0;
   border: 1px solid #bfd8e6;
   background: #ffffff;
   background: -webkit-gradient(linear, left top, left bottom, from(#a6bdcc), to(#f3ff99));
   background: -webkit-linear-gradient(top, #a6bdcc, #ffffff);
   background: -moz-linear-gradient(top, #a6bdcc, #ffffff);
   background: -ms-linear-gradient(top, #a6bdcc, #ffffff);
   background: -o-linear-gradient(top, #a6bdcc, #ffffff);
   background-image: -ms-linear-gradient(top, #a6bdcc 0%, #ffffff 100%);
   color: #945f1e;
   }
 </style>






</body>
</html>
    