<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
</head>


<body>
	<div class="pen-title">
		<h1>LOGIN</h1>
	</div>
	<div class="container">
		<div class="card"></div>
		<div class="card">
			<h1 class="title">Login</h1>
			<form id='form1' action="login.do" method="post"
				enctype="multipart/form-data">
				<div class="input-container">
					<input type="text" name="id" required="required"
						value="${cookie.id.value}" /> <label for="id">ID</label>
					<div class="bar"></div>
				</div>

				<div class="input-container">
					<input type="password" id="pwd" name="pwd" required="required" /> <label
						for="Password">Password</label>
					<div class="bar"></div>
				</div>
				<div class="button-container">
					<button type="submit">
						<span>Login</span>
					</button>
				</div>
				<br>

				<div class="footer">
					<a href='add.do'>JOIN</a>
				</div>
				<br>
				<br>
				<!-- <a id='aJoin' href='add.do' class='button2' onclick='joinMember()'>회원가입</a><br><br>
<button id='aJoin' name='join' type='submit' onclick='joinMember()'>회원가입</button>  -->
				<style type="text/css">
#saveEmail {
	color: #9d9d9d;
	border: 100px;
	font-size: %;
	font-stretch: expanded;
	text-align: center;
	margin: 100 600px;
}
</style>
				<div id="saveEmail">
					<input id="check" type="checkbox" name="saveId"
						${(empty cookie.email)?"":"checked"}><label for="check"></label>
					아이디 저장
				</div>
			</form>
		</div>
	</div>

	<!-- 
<script>
function joinMember() {
  var href = document.getElementById('aJoin').href 
  document.getElementById('aJoin').href = href;
}
</script>
 -->
</body>
</html>





