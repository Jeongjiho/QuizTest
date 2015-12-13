<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=utf-8" %>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link type="text/css" href="/common/css/ui.all.css" rel="stylesheet" />
		<script type="text/javascript" src="/common/js/jquery/jquery.js"></script>
		<script type="text/javascript" src="/common/js/jquery/jquery-1.3.2.js"></script>
		<script type="text/javascript" src="/common/js/jquery/ui/ui.core.js"></script>
		<script type="text/javascript" src="/common/js/jquery/ui/ui.datepicker.js"></script>
		<link type="text/css" href="/common/css/demos.css" rel="stylesheet" />
		<script type="text/javascript">
		$(function() {
			$("#datepicker").datepicker();
		});
		</script>
	</head>
	<body>	
	
	<div class="demo">
	<p>Date: <input type="text" id="datepicker"></p>
	</div>
	
	</body>
</html>

