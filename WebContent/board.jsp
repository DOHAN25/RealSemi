<%@page import="com.board.biz.BoardBiz"%>
<%@page import="com.board.util.Paging"%>
<%@page import="com.board.dto.BoardDto"%>
<%@page import="java.util.List"%>
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
	
	.main-wrap{
		width: vw;
   		height: vh;
   		background: #f5f6f7;
	}
	#header{
    text-align :center;
    
	}
	.icon{
		width: 100%;
   		height: 40px;
		text-align:right;
		
	}
	.icon span{
	
		margin-right:30px;
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
	
	#body .search input[type=text]{
		width:30%;
		border:2px solid #aaa;
		border-radius:4px;
		margin:8px 0;
		outline:none;
		padding:3px;
		box-sizing:border-box;
		transition:.3s;
	
	}
	#body .search input[type=text]:focus{
		border-color:dodgerBlue;
		box-shadow:0 0 8px 0 dodgerBlue;
	
	}
	
	
	
	.styled-table{
		border-collapse: collapse;
	    margin: 25px 0;
	    font-size: 12px;
	    font-family: sans-serif;
	    min-width: 500px;
	    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
		
	
	}
	.table{
		width:70%;
		height:70%;
		display:inline-block;	
	}
	
	.logo-wrap{
		display:inline-block;
	}

	
	#body .paging{
		width:30%;
		height:7%;
		display:inline-block;
		
		
	}
	#body .input-button{
		width:70%;
		height:5%;
		text-align:right;
		display:inline-block;
		
	}
	
	.input-button button {
		width: 80px;
		height: 35px;
		font-size: 13px;
		background-color: rgb(197, 197, 197);
		color: white;
		border: solid 1px pink;
	}
	.table .styled-table thead tr{
		background-color:pink;
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
	    border-bottom: 2px solid pink;
	}
	
	#body .paging .div-paging{
		width:150px;
		height:30px;
		margin:0px auto;
		
	}
	.paging .div-paging span{
		
		font-size:12px;
		width:13px;
		height:13px;
		float:lefe;
	}
	#footer{
	
		width:99%;
		text-align:center;
		display:inline-block;
	
	}

</style>
<%
	List<BoardDto> list = (List<BoardDto>)request.getAttribute("list");

	int pageNum = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));

	int totalCount  = Integer.parseInt(request.getAttribute("totalCount")+"");

	Paging paging = new Paging();
	paging.setPageNo(pageNum);
	paging.setPageSize(5);
	paging.setTotalCount(totalCount);

	BoardBiz biz = new BoardBiz();

%>

</head>
<div class="main-wrap">
	
	
	
	<div id="header">
	<div class="icon">
				<span>
					<a href="main.html" title="main으로 이동">
					<img alt="gomain" src = "resources/img/home.png" width="40px" height="40px" />
					</a>
				</span> 
				<span>
					<a href="mypage.html" title="mypage로 이동">
					<img alt="gomy" src = "resources/img/my.png" width="40px" height="40px" />
					</a>
				</span> 
		</div>		
	
		<div class="logo-wrap"><a href="main.jsp"><img src="resources/img/logo2.png"></a></div>
		
	</div>

	<div id="body">
		<div class="search">
			<span> <input type="text" placeholder="검색어 입력(아이디로 검색)">
				<button>검색</button>
			</span>
		</div>
		<div class="table">
			<table class="styled-table">
				<thead>
				<col width="200px" />
				<col width="500px" />
				<col width="400px" />
				<col width="200px" />
				<col width="200px" />
				</thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일자</th>
					<th>조회수</th>
				</tr>
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
		<div class="input-button">

			
					<input type="submit" value="글작성" onclick="location.href='insert.jsp'" style="text-align:right;"/>
				
		</div>
		<div class="paging">
			<div class="div-paging">
				<span>◀</span>
				<span>1</span>
				<span>2</span>
				<span>3</span>
				<span>4</span>
				<span>5</span>
				<span>▶</span>
				
			</div>
		</div>

	</div>

	<div id="footer">
		<address>copyright &copy; all rights reserved qclass....</address>
	</div>
</div>

<body>



</body>
</html>