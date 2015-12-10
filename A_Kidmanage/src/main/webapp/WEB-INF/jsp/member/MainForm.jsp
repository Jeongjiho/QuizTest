<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
body {
  background-image: url(http://parangsae.kidis.co.kr/images/bg.jpg);
  background-repeat: repeat-x;
  margin-top: 100px;
  margin-left: 0px;
  margin-right: 0px;
  margin-bottom: 0px;
}


.row.content {
	height: 800px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
    height: auto;
	}
}
</style>
</head>
<body >


	<!-- footer 상단 바
	<footer class="container-fluid"  style="background: darkseagreen;">
			
		<form style="margin-left: 850px;" class="form-inline">
		
			<div class="form-group" >
			<p style="font-size: 30px; margin-right: 500px">다인이 유치원</p>
				<label class="sr-only" for="exampleInputEmail3">
				Emailaddress</label> <input type="email" class="form-control"
					id="exampleInputEmail3" placeholder="Email">
			</div>
			<div class="form-group">
				<label class="sr-only" for="exampleInputPassword3">Password</label>
				<input type="password" class="form-control"
					id="exampleInputPassword3" placeholder="Password">
			</div>
			<div class="checkbox">
				<label> <input type="checkbox"> Remember me
				</label>
			</div>
			<button type="submit" class="btn btn-default">Sign in</button>
		</form>
	</footer>

 -->


	<!-- 중앙 내용물 -->
	<div class="col-sm-9">
		<hr>
		<h2>I Love Kid</h2>
		<h5>
			<span class="glyphicon glyphicon-time"></span> Post by Jane Dane, Sep
			27, 2015.
		</h5>
		<h5>
			<span class="label label-danger">Food</span> <span
				class="label label-primary">Ipsum</span>
		</h5>
		<br> <br> <br>

		<h4>
			<small>RECENT POSTS</small>
		</h4>
		<hr>
		<h2>Officially Blogging</h2>
		<h5>
			<span class="glyphicon glyphicon-time"></span> Post by John Doe, Sep
			24, 2015.
		</h5>
		<h5>
			<span class="label label-success">Lorem</span>
		</h5>
		<hr>

		<h4>Leave a Comment:</h4>
		<form role="form">
			<div class="form-group">
				<textarea class="form-control" rows="3" required></textarea>
			</div>
			<button type="submit" class="btn btn-success">Submit</button>
		</form>
		<br> <br>
		<br>
	</div>







	<!-- <div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav" style="background: snow;"> -->
				<span style="size: "><ul class="nav nav-pills nav-stacked">
				
					<li><a href="#section1">Home</a></li>
					<li><a href="#section2">Friends</a></li>
					<li><a href="#section3">Family</a></li>
					<li><a href="#section3">Photos</a></li>
				</ul></span>
				<br>
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
			<!--  	</div>
			</div>
		</div>
	</div> -->


</body>
</html>
<!-- 다인아 -->