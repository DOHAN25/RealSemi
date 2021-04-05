<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>♡ DayTwo - 오늘부터 1일? 우린 오늘부터 '데이투'! ♡</title>

<script type="text/javascript">
	
</script>

<head>
<meta charset="UTF-8">
<title>♡Day Two♡</title>

<style type="text/css">

* {
	margin: 0;
	border: 1px dashed blue;
}

.header{
margin-top: 10px;
margin-bottom: 3px;
margin-left: 20px;
margin-right: 20px;
}

.tittle {
width: 70%;
background-color: rgb(197, 197, 197);
vertical-align: middle;
font-family: Georgia, "Malgun Gothic", serif;
font-weight: bolder;
vertical-align:middle;
color: white;

}

.search-bar{
border:1px;
width: 100%;
height: 22px;
}

#search-bar{
border-color: none;
float: right;
font-size: 12px;
font-style: italic;
display:flex; 
align-items:center

}
#search-bar+ input +button {
	background: none;
	border-color: none;
}

.content{
margin: 1px;
width: 100vw;
height: 100vh;
background-color: none;
}

#menuicon {
	display: none;
}

#menuicon+label {
	display: block;
	margin: 5px;
	width: 30px;
	height: 20px;
	position: relative;
	cursor: pointer;
}

#menuicon+label span {
	display: block;
	position: absolute;
	width: 100%;
	height: 5px;
	border-radius: 30px;
	background: rgb(92, 86, 86);
	transition: all .35s;
}

#menuicon+label span:nth-child(1) {
	top: 0%;
}

#menuicon+label span:nth-child(2) {
	top: 50%;
	transform: translateY(-50%);
}

#menuicon+label span:nth-child(3) {
	bottom: 0%;
}

#menuicon:checked+label {
	z-index: 2;
}
#menuicon:checked+label span:nth-child(1) {
	top: 50%;
	transform: translateY(-50%) rotate(45deg);
}

#menuicon:checked+label span:nth-child(2) {
	opacity: 0;
}

#menuicon:checked+label span:nth-child(3) {
	bottom: 50%;
	transform: translateY(50%) rotate(-45deg);
}

div.sidebar {
	width: 250px;
	height: 75%;
	background-color: #8d8c8a;
	position: fixed;
	top: "";
	left: -250px;
	z-index: 1;
	transition: all .35s;
}

#menuicon:checked+label+div {
	left: 0;
}

.menu {
	margin: 0;
	padding: 0;
	width: 250px;
	height: 100%;
	background-color: none;
	font-weight: bolder;
	font-color: white;
	font-size: 17px;
	position: fixed;
	top: 0;
	left: -250px;
	z-index: 1;
	transition: all .35s;
}

#subMenu {
	margin-top: 15px;
	margin-bottom: 15px;
	background-color: #dcdcdc;
	position: relative;
	text-align: right;
	font-color: white;
	font-size: 20px;
	text-decoration: underline;
}

.map {
	margin: 0;
	padding: 0;
	border: 0;
	background: #dcdcdc;
	width: 100%;
	height: 100%;
}

#menuicon2 {
	display: none;
}

#menuicon2+label {
	margin: 5px;
	border: 5px;
	border-style: solid;
	border-color: rgb(255, 235, 181);
	background-color: none;
	display: block;
	margin: 5px;
	width: 25px;
	height: 25px;
	position: relative;
	cursor: pointer;
	float: right;
	border-radius: 100%;
	background-color: none
}

#menuicon2+label span {
	display: block;
	background-color: none;
	position: absolute;
	width: 70%;
	height: 5px;
	border-radius: 30%;
	background: rgb(194, 194, 194);
	transition: all .35s;
}

#menuicon2+label span:nth-child(1) {
	top: 60%;
	right: 5%;
	transform: translateY(0%) rotate(-45deg);
}

#menuicon2+label span:nth-child(2) {
	bottom: 60%;
	right: 5%;
	transform: translateY(0%) rotate(45deg);
}

#menuicon2:checked+label {
	z-index: 2;
	right: 250px;
}

#menuicon2:checked+label span:nth-child(1) {
	top: 60%;
	right: 5%;
	transform: translateY(0%) rotate(45deg);
}

#menuicon2:checked+label span:nth-child(2) {
	bottom: 60%;
	right: 5%;
	transform: translateY(0%) rotate(-45deg);
}

div.sidebar2 {
	width: 250px;
	height: 75%;
	background-color: #fcf7ce;
	position: fixed;
	top: "";
	right: -250px;
	z-index: 1;
	transition: all .35s;
}

#menuicon2:checked +label+div.sidebar2 {
	right: 0;
}

#weather {
	margin: 0;
	padding: 2px;
	border: 1px;
	width: 200px;
	height: 40px;
}

#dust {
	margin: 0;
	padding: 2px;
	border: 1px;
	width: 200px;
	height: 40px;
}

.finish {
	width: 100px;
	height: 20px;
	text-decoration: underline;
	font-weight: bolder;
	text-color: white;
}

.footer{
margin-top:1px;
bottom: 0px;
width: 100%;
height: 40px;
background-color: none;
text-align: left;
font-size: 9px;
color: light grey;

}

</style>

</head>

<body>




<div class="header" onclick="location.href='main00.jsp'">
<div class="tittle"> <h1> 하루 종일, 우리 둘이 데이투 'Day Two'</h1> </div>
</div>

		<div class="search-bar"> <span id="search-bar"><input type="text" placeholder="검색어를 입력해주세요."> <button onclick="">검색</button></span> </div> 
<!-- 메인로고 -->


	<div class="content">
<div class="map">
		<div class="Menu" id="left">
				<input type="checkbox" id="menuicon"> <label for="menuicon">
				<span></span> <span></span><span></span>
			</label>

			<div class="sidebar">
				<div>
					<div class="leftMenu" id="subMenu"> <a href="login.jsp"> 로그인 / 회원가입</a> <!-- 로그인페이지 -->
					</div>
					<div class="leftMenu" id="subMenu"> <a href=""> 공지사항 </a>
					</div>
					<div class="leftMenu" id="subMenu"> <a href="recommend.jsp"> 추천코스 </a> <!-- 추천코스 -->
					</div>
					<div class="leftMenu" id="subMenu"> <a href="board.jsp"> DayTwo 후기 </a>   <!-- 게시판 -->
					</div>
					<div class="leftMenu" id="subMenu"> <a href=""> 내 캘린더 </a>
					</div> 
					<div class="leftMenu" id="subMenu"> <a href="mypage.jsp"> 회원 정보 수정 </a> <!-- 정보수정 -->
					</div>
					<div class="leftMenu" id="subMenu"> <a href=""> ☞ 후원하기 </a>
					</div>
				</div>
			</div>

		</div>

		<div class="Menu" id="right">
				<input type="checkbox" id="menuicon2"> <label
					for="menuicon2"> <span></span> <span></span>
				</label>

				<div class="sidebar2">
					<div>
					<div> 새로운 일정 만들기 </div>
					<br> 
					<br> 
						<div id="rightMenu">
							날짜 년도 월 일 <input type="checkbox">
								<br> 

							<div id="weather">sysdate</div>
						</div>
					<br> 
						<div id="rightMenu">
							<div id="dust">오늘의 미세먼지 농도는 ... 입니다.</div>	<br> 
						</div>

						<div><input type="text" placeholder="지도애서 클릭해주세요."><a href=""> 출발</a> </div>	<br> 
						<div><input type="text" placeholder="지도애서 클릭해주세요."><a href=""> 도착</a> </div>	<br> 

						<div id="rightMenu">
							<div>경로지정</div>
							카페<input type="checkbox"> 식당<input type="checkbox">
							<br> 문화시설<input type="checkbox"> <br> 실내<input
								type="checkbox"> 실외<input type="checkbox"> <br>

							<div id="checkNotice">체크 후 클릭해주세요</div>
						</div>
						
						<div class="finish">
						<div id="finish" onclick="">완료</div>
						<div>/</div>
						<div id="finish" onclick="this">재설정</div>
					</div>
					</div>
					</div>
					
				
				
			</div>
		 </div>
		</div>



	<div class="map">
		<a href=""> 지도 api를 위에 덧입혀 주세요 </a>
	</div>

	<div class="footer">

		<a class="sc" href="" title="Popular searches">Popular searches</a> 
		<a class="sc" href=""title="People directory">Directory</a> 
		<a class="sc"href="" title="About us">About us</a> 
		<a class="sc" href=""title="Creator Resources">Creator Resources</a> 
		<a class="sc" href="" title="blog">Blog</a> 
		<a class="sc" href=""title="Jobs at Company">Jobs</a> 
		<a class="sc" href=""title="Company for developers">Developers</a> 
		<a class="sc" href=""title="For help">Help</a> 
		<a class="sc" href=""title="Terms of use">Legal</a> 
		<a class="sc" href=""title="Privacy policy">Privacy</a> 
		<a class="sc" href=""title="Cookies policy">Cookies</a> 
		<a class="sc" href="" title="Company information">Imprint</a>
		<a class="sc" href="" title="Charts">Charts</a>

		<div class="footer__localeSelector">
			<a type="button" class="localeSelector"> Language: <span class="sc">Korean (KR)</span>
			</a>
		</div>

	</div>



</body>
</html>