<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.my_wrap > h1 {
    background: #fff;
    width: 250px;
    hight: 800px;
    text-decoration: none;
}

ul {
	list-style-type: none;
	overflow: auto;
  	position: fixed;
}
#container {
	margin-left: 280px;
	width: 90%;
	padding: 30px 0;
}
.contents_header {
	margin-top: -20px;
}


.table tr th:first-child {
    background-color: #fb7d10;
    border-color: #8F1D1D;
    color: #FFF;          /* 글자색 */
    height: 30px;
}

.table {
	margin: 20px; 
	font-size: .9em; 
	font-color: #000000;    
	width: 600px;
	border-color: black;
   	border-collapse: collapse;   
 	border-radius: 5px;  /* 테두리둥글게 */
 	overflow: hidden;
}

input.button {
    top:50%;
    background-color:#fcad68;
    color: #fff;
    border:none; 
    border-radius:10px;   /* 테두리둥글게 */
    padding: 5px;   /* 버튼의 위, 아래, 오른쪽, 왼쪽에 padding */
}
</style>
</head>
<body>
<div class="my_wrap">
	<h1><span>마이페이지</span></h1>
	<ul>
		<li><a href="http://localhost:8080/omakaseProject/member/memberInfo">나의 예약정보</a></li>
		<li><a href="http://localhost:8080/omakaseProject/member/memberUpdate">회원정보 수정</a></li>
		<li><a href="#" >회원 탈퇴</a></li>
	</ul>
</div>

<div id="container">

	<div class="contents_header">
	<h3>나의 예약정보</h3>
	</div>
	
	<div class="contents_body">
		<table  class="table">
			<tr>
				<th>번호</th>
				<th>1</th>
			</tr>
			<tr>
				<th>예약일</th>
				<th>11.11</th>
			</tr>
			<tr>
				<th>예약시간</th>
				<th>19:00</th>
			</tr>
			<tr>
				<th>인원</th>	
				<th>총인원2   (성인2, 소아0)</th>
			</tr>
			<tr>
				<th>예약변경</th>
				<th>
				<input class="button" type="button" value="예약변경">
				<input class="button" type="button" value="예약취소">
				</th>
			</tr>
		</table>
	</div>
</div>  

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="../js/member.js"></script>
</body>
</html>