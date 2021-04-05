<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>
<link href="resources/css/board.css" rel="stylesheet" type="text/css" />

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
    background:#f5f5f5;
    height:100px;
	}
	#body{
		height: 700px;
		text-align:center;
	}
	
	#body .search{
		width:70%;
		height:5%;
		text-align:right;
		display:inline-block;
		
	
	}
	
	.tt{
	float: left;
	}
	.t1{
	width: 200px;
	height: 20px;
	color: #8d8c8a;
	text-decoration: underline;
	font-size: 14px;
	text-align: right;
	top: 40px;
	}
	
	.t2{
	width: 200px;
	height: 40px;
	color: #8d8c8a;
	font-size: 18px;
	font-style: italic;
	font: bolder;
	text-align: right;
	top: 70px; 
	}
	
body {background:#fff;}
header {width:100%; background:#f5f5f5;position:relative;z-index:10;}
.header-list {width:100%;height:40px;margin:0 auto;font-size:0;padding:15px 0;}
.header-list > li {font-size:12px;display:inline-block;vertical-align:middle;}
.header-list > li:nth-child(1) {font-size:20px;width:200px;}
.header-list > li:nth-child(2) {width:calc(100% - 250px);}
.header-list > li:nth-child(3) {width:50px;}
.header-list > li > div {width:auto;}

.menu-ul {font-size:0; }
.menu-ul > li {font-size:12px;display:inline-block;vertical-align:middle;}
.menu-ul > li > a {display:block;width:auto;padding:15px;}

input[id="menuicon"] {display:none;}
input[id="menuicon"] + label {display:block;position:relative;width:30px; height:30px;cursor:pointer;}
input[id="menuicon"] + label span {display:block;position:absolute;width:100%;height:3px;border-radius:30px;background:#666;transition:all .35s;float: right;}
input[id="menuicon"] + label span:nth-child(1) {top:10%;}
input[id="menuicon"] + label span:nth-child(2) {top:50%;transform:translateY(-50%);} /* */
input[id="menuicon"] + label span:nth-child(3) {bottom:10%;}
input[id="menuicon"]:checked + label {z-index:2;}
input[id="menuicon"]:checked + label span:nth-child(1) {top:50%;transform:translateY(-50%) rotate(45deg);}
input[id="menuicon"]:checked + label span:nth-child(2) {opacity:0;}
input[id="menuicon"]:checked + label span:nth-child(3) {bottom:50%;transform:translateY(50%) rotate(-45deg);}
div[class="sidebar"] {width:100%;height:0px;background:#cfcfcf;;position:absolute; top:50px;left:0;z-index:1;transition:all .35s;overflow:hidden;}
input[id="menuicon"]:checked + label + div {height:100px;}

.sitemap-ul {font-size:0;width:90%;margin:10px auto;text-align:center;background:#cfcfcf;}
.sitemap-ul > li {font-size:12px;display:inline-block;vertical-align:top;width:15%;background:#cfcfcf;}
	
	.styled-table{
		border-collapse: collapse;
	    margin: 25px 0;
	    font-size: 1.0em;
	    font-family: sans-serif;
	    min-width: 500px;
	    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
		
	
	}
	.table{
		width:70%;
		height:70%;
		display:inline-block;	
	}
	#body .paging{
		width:30%;
		height:10%;
		display:inline-block;
		
		
	}
	#body .insert-button{
		width:70%;
		height:5%;
		text-align:right;
		display:inline-block;
		
	}
	.table .styled-table thead tr{
		background-color: #009879;
   		color: #ffffff;
   		text-align:left;
	}
	.table .styled-table th,
	.table .styled-table td{
	 padding: 12px 15px;
	}
	.table .styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
	}
	
	.table .styled-table tbody tr:last-of-type {
	    border-bottom: 2px solid #009879;
	}
	
	.table .styled-table tbody .active-row{
	
	 font-weight: bold;
    color: #009879;
	}
	
</style>

</head>

<body>
<header>
<div id="header">
<div class="tt">
	<div class="t1">   당신의 후기를 들려주세요</div>
	<div class="t2">   함께 하는<br> DayTwo</div>
</div>
	<div style="width: 60%;">
				<ul class="menu-ul">
					<li><a href="mainIndex.html">처음으로</a></li>
					<li><a href="main.jsp">메인으로</a></li>
					<li><a href="recommend.jsp">추천코스</a></li>
					<li><a href="board.jsp">함께 DayTwo</a></li>
					<li><a href="support.jsp">후원하기</a></li>
				</ul>
			</div>
			
		<div style="float:right;">
				<input type="checkbox" id="menuicon">
				<label for="menuicon">
					<span></span>
					<span></span>
					<span></span>
				</label>
				<div class="sidebar">
					<ul class="sitemap-ul" style="float:right; width: 50%;" >
						<li><a href="#">로그아웃</a> <!-- 혹은 로그인 -->
							<ul>
								<li><a href="#">후원하기</a></li>
								<li><a href="#">01-02</a></li>
							</ul>
						</li>
						<li><a href="mypage.jsp">마이페이지</a> <!-- li 내정보관리 -->
							<ul>
								<li><a href="mypage_update.jsp">내 정보수정</a></li>
								<li><a href="#">ㅎㅎㅎ</a></li>
							</ul>
						</li>
						<li><a href="#">내 게시글</a> <!-- 로그인시에만 -->
							<ul>
								<li><a href="#">03-01</a></li>
								<li><a href="#">03-02</a></li>
							</ul>
						</li>
						
					</ul>
				</div>			
			</div>
		</div>
			</header>


	<div id="body">
		<div class="search">
				<span>
					<select name="select01">
						<option value="">작성자로 검색</option>
						<option value="">제목으로 검색</option>
					</select>
				
					<input type="text" placeholder="검색어 입력">
					<button>검색</button>
				</span>
		</div>
		<div class="table">
			<table class="styled-table">
			 <thead> 
			 <col width="200px"/>
					<col width="500px"/>
					<col width="400px"/>
					<col width="200px"/>
					<col width="200px"/>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
			 </thead>
				<tbody>
					<tr class="active-row">
						<td>3</td>
						<td><a href="">안녕하세요</a></td>
						<td>앨리스1</td>
						<td>2020.12.02</td>
						<td>2</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="">개춥네</a></td>
						<td>앨리스2</td>
						<td>2020.12.01</td>
						<td>2</td>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="">가입인사~~</a></td>
						<td>앨리스3</td>
						<td>2020.11.13</td>
						<td>2</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="insert-button">
			
				<input type="submit" value="글작성" onclick="location.href='insert.jsp'" style="text-align:right;"/>
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