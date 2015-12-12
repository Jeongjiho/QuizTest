<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>

<head>
<title>PhotoArtWork</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<!-- stylesheets -->
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/light.css" rel="stylesheet" type="text/css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="../js/modernizr-1.5.min.js"></script>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />


<!-- 디자인 CSS -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<style type="text/css">
/* light theme */
body {
  background: #EEE url(../images/light.png);
  color: #444;
}

h2, h6 {
  color: #07E5F9;
}

#site_content {
  background: #FEFEFC;
}

#left_content ul li {
  background: url(../images/light_bullet.png) no-repeat left center;
}

footer, footer a:hover {
  color: #111;
  text-shadow: 1px 1px #FFF;
}

#slideshow-caption, #slideshow-caption p {
  color: #FFF;
  background: #151515;
}

.form_settings .submit {
  background: #444;
  text-shadow: 1px 1px #000;
  color: #FFF;
}

.form_settings input, .form_settings textarea, .form_settings select {
  border-color: #777;
}

#blog_container h4.select {
  background: url(../images/light_blog.png) no-repeat right top;
}

.blog h3, div.image-title.portfolio_one, div.controls.portfolio_one a:hover
  {
  color: #111;
}

div.image-title.portfolio_two, div.controls.portfolio_two a {
  color: #FFF;
}

#blog_text {
  background: #F1F1E7;
  text-shadow: 1px 1px #FFF;
  color: #555;
}

ul#nav li a {
  text-shadow: 1px 1px #FFF;
  color: #000;
}

ul#nav ul {
  background: #DDD;
}

a, a:hover, footer a, ul#nav li.selected a, ul#nav li a:hover, ul#nav ul li a:hover,
  ul#nav ul li a:focus, ul#nav li.selected ul a:hover, div.controls.portfolio_one a,
  div.controls.portfolio_two a:hover {
  color: #F6007F;
}

ul.thumbs li.selected a.thumb {
  background: #F6007F;
}

div.pagination a, div.pagination span.current, div.pagination span.ellipsis
  {
  background: #444;
  color: #AAA;
}

div.pagination a:hover {
  background: #EEE;
  color: #111;
}

div.pagination span.current {
  background: #444;
  color: #FFF;
}

h1, h3, h4, h5, a:hover, #logo h1, #logo h1 a:hover, .form_settings input,
  .form_settings textarea, #blog_container h4, .blog h2, ul#nav li.selected ul a
  {
  color: #555;
}

div.navigation a.prev {
  background: url(../images/prev_arrow.gif) no-repeat left;
}

div.navigation a.next {
  background: url(../images/next_arrow.gif) no-repeat right;
}

div.pagination a, div.pagination span.current, div.pagination span.ellipsis
  {
  background-color: #BBB;
  color: #FFF;
}

div.pagination a:hover {
  background-color: #BBB;
  color: #000;
}

div.pagination span.current {
  background-color: #888;
  color: #FFF;
}

@font-face {
  font-family: Yanone Kaffeesatz;
  src: url('../fonts/YanoneKaffeesatz-Regular.eot');
  src: local(Yanone Kaffeesatz),
    url('../fonts/YanoneKaffeesatz-Regular.ttf');
}

@font-face {
  font-family: News Cycle;
  src: url('../fonts/NewsCycle-Regular.eot');
  src: local(News Cycle), url('../fonts/NewsCycle-Regular.ttf');
}

html {
  height: 100%;
}

* {
  margin: 0;
  padding: 0;
}

/* tell the browser to render HTML 5 elements as block */
article, aside, figure, footer, header, hgroup, nav, section {
  display: block;
}

body {
  font: normal .80em arial, sans-serif;
}

p {
  padding: 0 0 25px 0;
  line-height: 1.7em;
}

img {
  border: 0;
}

h1, h2, h3, h4, h5, h6 {
  font: normal 200% 'Yanone Kaffeesatz', arial, sans-serif;
  margin: 0 0 15px 0;
  padding: 0 0 5px 0;
}

h2 {
  font: normal 170% 'Yanone Kaffeesatz', arial, sans-serif;
  margin: 0;
  padding: 0 0 8px 0;
}

h3 {
  font: normal 150% arial, sans-serif;
}

h4, h5, h6 {
  margin: 0;
  padding: 0 0 5px 0;
  font: normal 110% arial, sans-serif;
  line-height: 1.5em;
}

h5, h6 {
  font: italic 95% arial, sans-serif;
  padding-bottom: 15px;
}

a, a:hover {
  outline: none;
  text-decoration: none;
}

a:hover {
  text-decoration: none;
}

ul {
  margin: 2px 0 22px 17px;
}

ul li {
  list-style-type: circle;
  margin: 0 0 0 0;
  padding: 0 0 4px 5px;
}

ol {
  margin: 8px 0 22px 20px;
}

ol li {
  margin: 0 0 11px 0;
}

#main, #header, #logo, #menubar, #site_content, #footer {
  margin-left: auto;
  margin-right: auto;
}

#main {
  width: 950px;
  margin: 20px auto;
}

header {
  width: 950px;
  height: 105px;
}

#logo {
  width: 250px;
  float: left;
  height: 100px;
  background: transparent;
  padding: 0 0 10px 10px;
}

#logo h1 {
  font: normal 500% 'Yanone Kaffeesatz', arial, sans-serif;
  padding: 45px 0 0 17px;
  margin-top: 12%;
}

#logo h1 a:hover {
  text-decoration: none;
}

#site_content {
  width: 950px;
  overflow: hidden;
  margin: 4px auto 0 auto;
  padding: 0;
}

#left_content {
  float: left;
  text-align: justify;
  width: 444px;
  padding: 20px 0 5px 25px;
  margin: 0;
}

#left_content ul {
  margin: 2px 0 22px 0px;
}

#left_content ul li {
  list-style-type: none;
  margin: 0 0 0 0;
  padding: 2px 0 2px 28px;
  line-height: 1.5em;
}

#right_content {
  float: right;
  width: 450px;
  padding: 0;
  min-height: 450px;
}

#right_content img {
  float: left;
}

footer {
  width: 930px;
  font: normal 100% arial, sans-serif;
  padding: 50px 20px 5px 0;
  text-align: right;
  background: transparent;
}

footer p {
  padding: 0 0 10px 0;
}

footer a, footer a:hover {
  text-decoration: none;
}

/* styling for the slideshow on the homepage */
ul.slideshow {
  list-style: none;
  width: 950px;
  height: 450px;
  overflow: hidden;
  position: relative;
  margin: 0;
  padding: 0;
}

ul.slideshow li {
  position: absolute;
  margin: 0;
  padding: 0;
  left: 0;
  right: 0;
}

ul.slideshow li.show {
  z-index: 500;
}

ul img {
  border: none;
}

#slideshow-caption {
  width: 950px;
  height: 90px;
  position: absolute;
  bottom: 0;
  left: 0;
  z-index: 500;
}

#slideshow-caption .slideshow-caption-container {
  padding: 20px 25px 0 25px;
  z-index: 1000;
}

#slideshow-caption p {
  padding: 0;
  font: normal 130% arial, sans-serif;
}

/* form styling */
.form_settings {
  margin: 0;
}

.form_settings p {
  padding: 0 0 10px 0;
}

.form_settings span {
  padding: 5px 0;
  float: left;
  width: 170px;
  text-align: left;
}

.form_settings input, .form_settings textarea {
  padding: 4px;
  width: 252px;
  font: 100% 'trebuchet ms', arial, sans-serif;
  border: 0;
  border-bottom: 1px solid;
  background: transparent;
}

.form_settings .submit {
  font: 170% 'Yanone Kaffeesatz', arial, sans-serif;
  border: 0;
  width: 100px;
  margin: 0 0 0 162px;
  height: 33px;
  padding: 2px 0 3px 0;
  cursor: pointer;
  border-radius: 6px 6px 6px 6px;
  -webkit-border-radius: 6px 6px 6px 6px;
  -moz-border-radius: 6px 6px 6px 6px;
}

.form_settings textarea, .form_settings select {
  font: 100% 'trebuchet ms', arial, sans-serif;
  border: 1px solid;
  border-radius: 6px 6px 6px 6px;
  -webkit-border-radius: 6px 6px 6px 6px;
  -moz-border-radius: 6px 6px 6px 6px;
  width: 250px;
  overflow: auto;
}

.form_settings select {
  width: 304px;
}

.form_settings .checkbox {
  margin: 4px 0;
  padding: 0;
  width: 14px;
  border: 0;
  background: none;
}

/* styling for the blog page */
#blog_container h4 {
  font: normal 200% 'Yanone Kaffeesatz', arial, sans-serif;
  margin: 0 0 15px 0;
  padding: 5px 0;
}

#blog_container h4.select {
  width: 475px;
}

.blog {
  background: url(../images/calendar.png) no-repeat;
  width: 54px;
  height: 46px;
  float: left;
  margin: 0 15px 0 0;
}

.blog h2 {
  font: bold 90% arial, sans-serif;
  text-shadow: none;
  text-align: center;
  margin: 0;
  padding: 4px 0 0 0;
}

.blog h3 {
  font: 140% arial, sans-serif;
  text-shadow: none;
  margin: 0;
  text-align: center;
  padding: -10px 0 0 0;
}

#blog_text {
  padding: 20px;
  overflow: auto;
  height: 100%;
}

#blog_text h1 {
  font: normal 190% 'Yanone Kaffeesatz', arial, sans-serif;;
  margin: 0 0 15px 0;
  padding: 5px 0;
}

/* stylesheet for sooperFish by www.sooperthemes.com -- author: jurriaan roelofs */
html body ul.sf-menu ul, html body ul.sf-menu ul li {
  width: 180px;
}

html body ul.sf-menu ul ul {
  margin: 0 0 0 180px;
}

ul.sf-menu, ul.sf-menu * {
  margin: 0;
  padding: 0;
}

ul.sf-menu {
  display: block;
  position: relative;
}

ul.sf-menu li {
  display: block;
  list-style: none;
  float: left;
  position: relative;
}

ul.sf-menu li:hover {
  visibility: inherit; /* fixes IE7 'sticky bug' */
}

ul.sf-menu a {
  display: block;
  position: relative;
}

ul.sf-menu ul {
  position: absolute;
  left: 0;
  width: 150px;
  top: auto;
  left: -999999px;
}

ul.sf-menu ul a {
  zoom: 1; /* IE6/7 fix */
}

ul.sf-menu ul li {
  float: left;
  /* Must always be floated otherwise there will be a rogue 1px margin-bottom in IE6/7 */
  width: 150px;
}

ul.sf-menu ul ul {
  top: 0;
  margin: 0 0 0 150px;
}

ul.sf-menu li:hover ul, ul.sf-menu li:focus ul, ul.sf-menu li.sf-hover ul,
  ul.sf-menu ul li:hover ul, ul.sf-menu ul li:focus ul, ul.sf-menu ul li.sf-hover ul,
  ul.sf-menu ul ul li:hover ul, ul.sf-menu ul ul li:focus ul, ul.sf-menu ul ul li.sf-hover ul,
  ul.sf-menu ul ul ul li:hover ul, ul.sf-menu ul ul ul li:focus ul, ul.sf-menu ul ul ul li.sf-hover ul
  {
  left: auto;
}

ul.sf-menu li:hover ul ul, ul.sf-menu li:focus ul ul, ul.sf-menu li.sf-hover ul ul,
  ul.sf-menu ul li:hover ul ul, ul.sf-menu ul li:focus ul ul, ul.sf-menu ul li.sf-hover ul ul,
  ul.sf-menu ul ul li:hover ul ul, ul.sf-menu ul ul li:focus ul ul, ul.sf-menu ul ul li.sf-hover ul ul,
  ul.sf-menu ul ul ul li:hover ul ul, ul.sf-menu ul ul ul li:focus ul ul,
  ul.sf-menu ul ul ul li.sf-hover ul ul {
  left: -999999px;
}

/* theming the menu */
nav {
  width: 650px;
  margin: 1px auto 0 auto;
  float: right;
  padding: 35px 0 0 0;
}

ul#nav {
  float: right;
  margin: 25px 10px 0 0;
}

ul#nav li a {
  font: normal 150% 'News Cycle', sans-serif;
  text-decoration: none;
  outline: none;
  text-align: center;
  z-index: 10;
  display: block;
  float: left;
  height: 30px;
  padding: 5px 14px 6px 15px;
  position: relative;
  overflow: hidden;
}

ul#nav ul {
  margin-top: 40px;
  padding-bottom: 10px;
}



</style>


</head>

  <div align="right" style="margin-right:15%; margin-top:5%">
<jsp:include page="/Header.jsp" />
</div> 

<body>
	<div id="main">

		<!-- begin header -->
		<header>
			<div id="logo" style="margin-bottom: 5%; margin-top: -7%; font-size: 11px;">
				<h1>
					<a href="login.do">다인이</a>유치원
				</h1>
			</div>
			<nav>
				<ul class="sf-menu" id="nav" style="margin-bottom: 5%;">
					<li class="selected" style="font-size: 12px;"><a href="index.html">공지사항</a></li>
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


		<!-- begin footer -->
		<footer>
			<p style="font-size: 15px;">
				Copyright &copy; 2015 다인이유치원. All Rights Reserved. <a
					href="http://www.css3templates.co.uk">Design from 갓지현</a>.
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
	<script type="text/javascript" src="../js/image_fade.js"></script>
	<!-- initialise sooperfish menu -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('ul.sf-menu').sooperfish();
		});
	</script>


</body>
</html>
