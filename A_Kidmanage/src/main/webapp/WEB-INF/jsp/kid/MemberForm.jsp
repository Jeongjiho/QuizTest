<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>회원가입</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body >
<div class="pen-title">
	<h1>회원가입</h1>
</div>

  <div class="container">
    <div class="card"></div>
    <div class="card">
	<form id='form1' action='add.do' method='post'
		enctype="multipart/form-data">
		 
		  <div class="input-container">
				<input type='text' name='name' size='15' required="required"/>
				<label for="name">name</label>
        <div class="bar"></div>
      </div>

      <div class="input-container">
				<input type='text' name='id' size='15' required="required"/>
				<label for="id">id</label>
        <div class="bar"></div>
      </div>

      <div class="input-container">
				<input type='password' name='pwd' size='20' required="required">
				<label for="pwd">pwd</label>
        <div class="bar"></div>
      </div>

      <div class="input-container">
				<input type='text' name='tel' size='20' required="required">
				<label for="tel">tel</label>
		  <div class="bar"></div>
      </div>

        <div class="input-container">
				<input type='text' name='address' size='30' required="required">
			<label for="address">address</label>
      <div class="bar"></div>
      </div>


        <div class="input-container">
				<input type='text' name='email' size='30' required="required">
				<label for="email">email</label>
      <div class="bar"></div>
      </div>

      <h1 style="align:center; font-size:20px;margin-left:60px;">Photo</h1>
      <div class="input-container">
      <input type='file' id='Photo' name="photofile" style="font-size:18px" />
      </div>

      <div class="button-container">
        <button type="reset"><span>초기화</span></button>
      </div><br><br>
      
<div class="button-container">
        <button type="submit"><span>등록하기</span></button>
      </div>
      
      
      
<br>

	</form>
	
	 </div>
</div>
	
</body>
</html>
