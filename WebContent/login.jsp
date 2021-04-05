<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>

<link rel="stylesheet" type="text/css" href="resources/css/login.css" />
<style type="text/css">

li{
	list-style:none;
}

*{
	
	margin:0;
	padding:0;

}

body{
	background:#f5f6f7;
	
}

.main-box{
	width: vw;
    height: 90vh;
	display:flex;
	flex-direction:column;
	align-items:center;
	
	margin-top: 21px;
	
}
/* 높이%로하면 계속 움직여서 px로*/
.main-box .main-wrap{
	width:400px;
	height: 515px;
	transform: translateY(10%);
	border: solid 1px pink;

}
.main-box .main-wrap .lang-wrap .lang
{
	width: 70px;
	height: 20px;
	border-bottom: solid 1px pink;

}
.main-box .main-wrap .logo-wrap{
	padding-top:10px;
	padding-bottom: 10px;
	background-color: none;
	border-bottom: solid 1px pink;
}

.main-box .main-wrap header .lang-wrap{
	display:flex;
	justify-content:flex-end;
	border-bottom: solid 1px pink;
	background-color: pink;
}

.main-box .main-wrap header .logo-wrap{
	display:flex;	
	flex-direction: column;
	align-items: center;
	background-color: white;
}
.input-text-wrap{
	padding-top: 20px;
	padding-bottom: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.input-id{
	width: 280px;
	height :35px;
	border: solid 1px #dadada;
	background: white;
}
.input-password{
	width: 280px;
	height :35px;
	border: solid 1px #dadada;
	background: white;
	margin-top: 13px;
	
}
.input-id input{
	border: none;
	width: 200px;
	margin-top: 7px;
	font-size: 10px;
	margin-left: 8px;
	height:20px;
}
.input-password input{
	border: none;
	width:200px;
	margin-top: 7px;
	font-size: 10px;
	margin-left: 8px;
	height:20px;
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
}


.Easy-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	border-top: solid 1px pink;
	padding-bottom: 20px;

}
.Easy-wrap h2{
	font-size: 14px;
}
.Easy-wrap .social-login
{
	padding-top:25px;
	padding-bottom:25px;
	border-bottom: solid 1px pink;
	list-style: none;
	width: 320px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.Easy-wrap .social-login li{
	padding-bottom: 8px;
}
.Easy-wrap .social-login li button{
	width: 280px;
	height: 35px;
	border: solid 1px gray;
	text-align: left;
	background: white;
	padding-bottom: 10px;
}

.Easy-wrap .social-login li button span{
	
	padding-left: 14px;
	font-size: 12px;
}

.Easy-wrap span{
	
	padding-top: 5px;	
	
}


footer{
   

	padding-bottom: 10px;
	display:flex;
	flex-direction:column;
	align-items:center;
	width:100%;
	height: 10px;
 	 position:fixed;

}
.footer-wrap{
		
  display: flex;
	flex-direction: column;
	align-items: center;
	height: 15px;
	margin-bottom:0px;	

}
footer .footer-wrap span img{
	display: flex;
	width: 59px;
	height: 11px;
}
footer .footer-wrap span{
	
	font-size: 13px;
	line-height: 15px;
}

A:VISITED {
color: rgb(197, 197, 197);
text-decoration: none;
}

</style>
</head>
<body>

<!-- 로그인 화면 jsp -->

<form action="regist.do"method="post" id="loginform">
<input type="hidden" name="command" value="loginres">
<fieldset>
<div class="main-box">
		<div class="main-wrap">
			<header>
				<div class="lang-wrap">
				<div class="lang"></div>
				</div>

				<div class="logo-wrap">
					<a href="main.jsp"><img src="resources/img/logo2.png"></a>
				</div>
			</header>

			<section class="input-text-wrap">
				<div class="input-id">
					<input placeholder="Username" type="text"></input>
				</div>
				<div class="input-password">
					<input placeholder="password" type="password"></input>
				</div>
				<div class="input-button">
					<button>로그인</button>
				</div>
			</section>

			<section class="Easy-wrap">
				<h6 style="color:grey; padding-top: 20px;" >SNS 계정으로 가입하기</h6>
				<ul class="social-login">
										<%
	String clientId = "zOyYdXgy2oaLzPhWWPFb";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8787/Semi_login/naver.do", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
%>
					<li> <a href="<%=apiURL%>"><img src="resources/img/naver.png" width="280px" height="40px"></a>
						</li>
							<!-- 네이버아이디로로그인 버튼 노출 영역 -->
				
					<li><a href="https://kauth.kakao.com/oauth/authorize?client_id=6147ede2fee67c7e4d0316a0ef4cb677&redirect_uri=http://localhost:8787/Semi_login/kakao.do&response_type=code"><img src="resources/img/kakao.png" width="280px" height="40px"></a>
						</li>
				</ul>
				
				
<div style="padding-top: 15px; padding-bottom:10px; text-align:center; clolor:rgb(197, 197, 197);" >
				<div style="float:inline; font-size:12px;"><a href="regist.do?command=registForm">회원가입</a></div>
				<div style="float:inline; color:rgb(197, 197, 197);">
				<a href="regist.do?command=findId"style="font-size:12px;">아이디 찾기</a> / <a href="regist.do?command=findPw"style="font-size:12px;">비밀번호 찾기</a>
				</div>
				
				</div>
			</section>


		</div>


	</div>
<footer>
	<div class="footer-wrap">
		<address style="color:grey;">copyright &copy; all rights reserved qclass....</address>
	</div>
</footer>


	</fieldset>
</form>
</body>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- kakao로그인 실행 함수 -->
<script>
	//javascript SDK 초기화
	//javascript key:804de9dc4d252e4123548ce16301b21c
	Kakao.init("804de9dc4d252e4123548ce16301b21c");
	console.log(Kakao.isInitialized());
	
	function kakaologin(){
		Kakao.Auth.login({
			//사용동의한 항목들(추가항목 동의받기)
			scope: 'profile, account_email, gender',
			//로그인 성공
			success: function(authObj){
				Kakao.API.request({
					//로그인한 사용자의 정보 가져오기
					url:'/v2/user/me',
					success: function(res){
						const kakao_account = res.kakao_account;
						console.log(kakao_account);
					}
				});
			},
			fail: function(error){
				console.log(error);
			}
		});
	}
</script>

</html>