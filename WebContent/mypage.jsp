<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>

<style type="text/css">


	*{
		padding: 0px;
		margin: 0px;
	}
	div{
		border : 1px dashed blue;
		margin:10px;
	}
	#body-wrap{
		width:70%;
		height:80%;
	}
	#body-u{
		width:90%;
		height: 40%;
		padding-right:100px;	
	}
	#right-u{
		width:15%;
		height:90%;
		float:right;		
	
	}
	#center-u{
		width:25%;
		height:90%;
		float:right;
		margin-right:100px;	
	}
	#left-u{
		width:13%;
		height:90%;
		float:right;
		margin-right:100px;
	}
	#body-d{
		width:90%;
		height: 40%;
		padding-right:100px;	
	}
	
	#right-d{
	width:30%;
		height:90%;
		float:left;
	}
	#left-d{
	width:30%;
		height:90%;
		float:right;
	}

</style>

</head>
<body>

	<div id="header">
	<div class="icon">
				<span>
					<a href="usuermain.jsp" title="main으로 이동">
					<img alt="gomain" src = "resources/img/home.png" width="40px" height="40px" />
					</a>
				</span> 
				<span>
					<a href="mypage.jsp" title="mypage로 이동">
					<img alt="gomy" src = "resources/img/my.png" width="40px" height="40px" />
					</a>
				</span> 
		</div>		
	
		<div><h1>제목</h1></div>
</div>
	<div id="body-wrap">
		<div id="body-u">
			<div id="right-u">
				<p><br/><input type= "button" value="후원"/></p><br/>
				<p><input type= "button" value="적립"/></p><br/>
				<p><input type= "button" value="쿠폰"/></p><br/>
			</div>
			<div id="center-u">
				<p>이름<br/>아이디<br/>가입일자<br/>주소</p>
			</div>
			<div id="left-u">
				<p><img alt="gomain" src = "resources/img/user.png" width="150px" height="180px" />
					</p>
			</div>
		</div>
		<div id="body-d">
			<div id="right-d">
				<p>나의 활동 <br/><br/>캘린더확인<br/>게시글</p>
			</div>
			<div id="left-d">
				<p>일단 캘린더고  버튼 누르면 다른거(후원,적립,쿠폰??)뜨게
					
				 </p>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<address>copyright &copy; all rights reserved qclass....</address>
	</div>
	
	

</body>
</html>