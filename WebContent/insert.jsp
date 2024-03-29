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
		margin:2px;
	}
	

.main-wrap{
		width: vw;
   		height: 90vh;
   		display:flex;
   		flex-direction:column;
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
	
	
	#body #table{
		width:70%;
		height:80%;
		display:inline-block;
		
		
	}
	
	.list{
		width:8%;
		height:50px;
		float:left;
		text-align:left;
		line-height:50px;
		margin-left:180px;
	}
	.text{
		width:70%;
		height:50px;
		float:right;
		text-align:left;
	}
	
	
	#body #table input[type=text]{
	
		width:100%;
		border:2px solid #aaa;
		border-radius:4px;
		margin:8px 0;
		outline:none;
		padding:8px;
		box-sizing:border-box;
		transition:.3s;
		
	}
	#body #table input[type=text]:focus{
		border-color:dodgerBlue;
		box-shadow:0 0 8px 0 dodgerBlue;
	
	}
	
	#body #insert-button{
	
		width:70%;
		height:5%;
		text-align:right;
		display:inline-block;
	
		
		
		
	}

</style>


<!-- 글쓰기페이지 -->


<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<link href="resources/css/insert.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
$(document).ready(function() {
    //여기 아래 부분
    $('#summernote').summernote({
        height : 200, // 에디터 높이
        minHeight : 200, // 최소 높이
        maxHeight : 200, // 최대 높이
        focus : true, // 에디터 로딩후 포커스를 맞출지 여부
        lang : "ko-KR", // 한글 설정
        placeholder : '최대 500자까지 작성 가능하며 욕설이나 비방글 부적절한 내용은 삭제 될 수 있습니다.' //placeholder 설정

    });
});



</script>
</head>
<body>

<div class="main-wrap">

	<div id="header">
	
	<div class="icon">
		<span><a href="#">홈</a></span> 
		<span><a href="#">마이</a></span> 
	</div>		
	
	<div><h1>제목</h1></div>


	</div>
	
	<div id="body">
		
		<div id="table">
	
			<div class="list">작성자 : </div><div class="text"><input type="text" placeholder="name"/></div>
			
			<div class="list">작성일 : </div><div class="text"><input type="text" placeholder="sysdate"/></div>
			
			<div class="list">제목 : </div><div class="text"><input type="text" placeholder="title"/></div>
			<div class="list">비밀번호 : </div><div class="text"><input type="text" placeholder="password"/></div>
			<div class="list">내용 : </div><div class="text"><textarea rows="10" cols="73" placeholder="content" id="summernote"></textarea></div>
	
			
	
		
		</div>
	
		<div id="insert-button">
				<input type="submit" value="작성" />
				<input type="button" value="취소" onclick="">
		</div>
	</div>
	
	<div id="footer">
		<address>copyright &copy; all rights reserved qclass....</address>
	</div>
</div>
</body>
</html>