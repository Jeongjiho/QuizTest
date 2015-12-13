<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<title>앨범 등록</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<!-- stylesheets -->
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/light.css" rel="stylesheet" type="text/css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="../js/modernizr-1.5.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
  function previewImage(input) {
	  if(input.files && input.files[0]) {
		  var reader = new FileReader();
		  reader.onload = function (e) {
			  $('#UploadedImg').attr('src', e.target.result);
		  }
		  reader.readAsDataURL(input.files[0]);
	  }
  }
  
  </script>
</head>

<body>
	<div id="main">

		<!-- begin header -->
		<header>
			<div id="logo"
				style="margin-bottom: 0%; margin-top: 2%; font-size: 11px;">
				<h1>
					<a href="login.do">다인이</a>유치원
				</h1>
			</div>
			<nav>
				<ul class="sf-menu" id="nav" style="margin-bottom: 5%;">
					<li class="selected" style="font-size: 12px;"><a
						href="index.html">공지사항</a></li>
					<li style="font-size: 12px;"><a href="#">우리 아이들</a>
						<ul>
							<li style="font-size: 12px;"><a href="portfolio_one.html">나비반</a></li>
							<li style="font-size: 12px;"><a href="portfolio_two.html">호랑이반</a></li>
							<li style="font-size: 12px;"><a href="portfolio_two.html">남자반</a></li>
						</ul></li>
					<li style="font-size: 12px;"><a href="#">앨범</a>
						<ul>
							<li><a href="gallery1.do">나비반</a></li>
							<li><a href="gallery2.do">호랑이반</a></li>
							<li><a href="gallery3.do">남자반</a></li>
						</ul></li>
					<li style="font-size: 12px;"><a href="blog.html">식단표</a></li>
				</ul>
			</nav>
		</header>
		<!-- end header -->

		<!-- begin content -->
		<div id="site_content">
			<div id="left_content">
				<h1>Album</h1>
				<form id="contact" action="albumadd.do" method="post"
					enctype="multipart/form-data">
					<div class="form_settings">
						<p>
							<span>Content</span>
							<textarea class="contact textarea" rows="5" cols="50"
								name="content"></textarea>
						</p>
						<p>
							<span>Photo</span><input type="file"
								onchange="previewImage(this)" name="photofile">
						</p>
						<p style="padding-top: 15px">
							<span>&nbsp;</span><input class="submit" type="submit"
								name="contact_submitted" value="Add" />
						</p>
					</div>
				</form>
			</div>
			<div id="right_content">
				<img id="UploadedImg" src="../images/contact.jpg" width="450"
					height="450" title="contact" alt="contact" />
			</div>
		</div>
		<!-- end content -->

		<!-- begin footer -->
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
		<!-- end footer -->

	</div>
	<!-- javascript at the bottom for fast page loading -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="../js/jquery.sooperfish.js"></script>
	<!-- initialise sooperfish menu -->
	<script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
