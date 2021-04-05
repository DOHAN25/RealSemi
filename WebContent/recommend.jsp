<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>
<link href="resources/css/recommend.css" rel="stylesheet" type="text/css" />

<style type="text/css">
*{
		padding: 0px;
		margin: 0px;
	}
	div{
		border : 1px dashed blue;
		margin:10px;
	}
	#header{
    text-align: left;
        width: 100%;
    background: #f5f5f5;
    position: relative;
    z-index: 10;
	}
	#body{
		height: 750px;
		text-align:center;
	}
	.recommend-wrap{
		height:700px;
	}
	#body .recommend-wrap .img{
		height:200px;
		width:200px;
		margin:50px;
		display:inline-block;
	}
	
	h1{
	color: white;
	font-weight: bolder;
	font-family: sans-serif;
	font-style: italic;
	}
</style>

</head>
<body>

<div id="header">
    <h1>DayTwo가 추천하는 핫플레이스</h1>
        <div>
        	<span><a href="mainIndex.html">처음으로</a></span>
        	<span><a href="main.jsp">메인으로</a></span>
            <span><a href="recommend.jsp">추천코스</a></span>
            <span><a href="board.jsp">함께 DayTwo</a></span>
            <span><a href="support.jsp">후원하기</a></span>

        </div>
        <div>
            <span><a href="#">로그아웃</a></span> <!-- 혹은 로그인 -->
            <span><a href="mypage.jsp">마이페이지</a></span> <!-- li 내정보관리 -->
            <span><a href="#">내 게시글</a></span> <!-- 로그인시에만 -->


        </div>
    </div>

    <div id="body">

    <div class="recommend-wrap">

        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>

    </div>


        <div class="paging">
            paging
        </div>
    </div>

    <div id="footer">
        <address>copyright &copy; all rights reserved qclass....</address>
    </div>
    
</body>
</html>