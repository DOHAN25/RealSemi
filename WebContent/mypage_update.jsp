<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>
<link	href="resources/css/mypage_update.css"
		rel="stylesheet"
		type="text/css" />
		
<style type="text/css">
	*{
		padding: 0px;
		margin: 0px;
	}
	div{
		border : 1px dashed blue;
		margin:10px;
	}
	#body{
		height: 400px;
	}
	#left{
		width:48%;
		height:90%;
		float:left;		
	
	}
	#right{
		width:48%;
		height:90%;
		float:right;	
	
	}
</style>

</head>
<body>

<div id="header">
	<h1>제목</h1>
		<div>
			<span><a href="#">메뉴1</a></span>
			<span><a href="#">메뉴2</a></span>
			<span><a href="#">메뉴3</a></span>
			<span><a href="#">메뉴4</a></span>
		
		</div>
	</div>
	
	<div id="body">
		<div id="left">
			<p>내용1</p>
		</div>
		<div id="right">
			<p>내용2</p>
		</div>
	
	
	</div>
	
	<div id="footer">
		<address>copyright &copy; all rights reserved qclass....</address>
	</div>

</body>
</html>