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

.contents_body {
	margin-left: 50px;
}

.contents_body > span{
    display: block;
    padding: 8px 0 0 0;   
}


#updateBtn {
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
		<li><a href="#">회원 탈퇴</a></li>
	</ul>
</div>

<div id="container">

	<div class="contents_header">
	<h3>회원정보 수정</h3>
	</div>
	
	<div class="contents_body">
<!--  
		<table>
			<tr>
				<th>이름</th>
				<td><input type="name" id="name"></td>
			</tr>
			
			<tr>
				<th>현재 비밀번호</th>
				<td><input type="pwd" id="pwd"></td>
			</tr>
			
			<tr>
				<th>변경할 비밀번호</th>
				<td><input type="repwd" id="repwd"></td>
			</tr>
			
			<tr>
				<th>이메일</th>
				<td><input type="email" id="email"></td>
			</tr>
			
			<tr>
				<th>전화번호</th>
				<td><input type="tel" id="tel"></td>
			</tr>
			
			<tr>
				<th>생년원일</th>
				<td><input type="birth" id="birth"></td>
			</tr>
		</table>
-->		
		
			<span>이름</span>
			<input type="name" id="name">
			
			<span>현재 비밀번호</span>
			<input type="pwd" id="pwd">
			
			<span>변경할 비밀번호</span>
			<input type="repwd" id="repwd">
			
			<span>이메일</span>
			<input type="email" id="email">
		
		
		
			<span id="block">아이디</span>
			<input type="id" id="id">
			
			<span>전화번호</span>
			<input type="tel" id="tel">
			
			<span>생년원일</span>
			<input type="birth" id="bitrh">
			
			<span>마케팅 수신동의</span>
			<input type="checkbox" id="emailMarketing">이메일
			<input type="checkbox" id="emailMarketing">문자 메시지
		

		<span>
			<input type="button" id="updateBtn" value="저장하기">
		</span>


	</div>
</div>  

</body>
</html>