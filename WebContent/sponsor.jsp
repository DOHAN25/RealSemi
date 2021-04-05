<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>
<link href="resources/css/sponsor.css" rel="stylesheet" type="text/css" />
<!-- 후원하기페이지 -->

<style type="text/css">

*{
		padding: 0px;
		margin: 0px;
	}
	div{
		border : 1px dashed blue;
		margin:10px;
	}
	body{
	background-color: #f5f6f7;
	}
	
	.main-wrap{
		width: vw;
   		height: vh;
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
	
	
	.left{
		width:45%;
		height:95%;
		float:left;
	}
	
	.right{
		width:45%;
		height:95%;
		float:right;
	}
	.right-u{
		width:95%;
		height:45%;
	}
	.right-d{
		width:95%;
		height:45%;
	}
	.input-button{
	padding-top: 10px;
	}
	.input-button button{
		width: 280px;
		height :35px;
		font-size: 13px;
		background-color:rgb(197, 197, 197);
		color: white;
		border: solid 1px pink;
		margin-top: 10px;
	}
	.input-button input {
		width: 280px;
		height: 35px;
		font-size: 13px;
		background-color: rgb(197, 197, 197);
		color:white;
		border: solid 1px pink;
		margin-top:10px;
		text-align:center;
	
}
	
	
	
	.table{
		width:70%;
		height:90%;
		display:inline-block;	
	}
	
	
	
	
	#footer{
	
		width:99%;
		text-align:center;
		display:inline-block;
	
	}

</style>

</head>
<body>

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
	
		<div><a href="main.jsp"><img src="resources/img/logo2.png"></a></div>
		
	</div>

	<div id="body">
	
		<div class="table">
		
		<div class="left">그림</div>
		<div class="right">
			<div class="right-u">후원에 대한 설명</div>
			<div class="right-d">
			
			<div class="input-button">
					<button>10,000</button>
					<button>50,000</button>
					<button>100,000</button>
					<input placeholder="직접입력" type="text"></input>
					<button>확인</button>
				</div>
			
			
			</div>
			
		
		</div>
		
		</div>
		
		
		

	</div>

	<div id="footer">
		<address>copyright &copy; all rights reserved qclass....</address>
	</div>
</div>
</body>
</html>