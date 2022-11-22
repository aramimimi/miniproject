<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
/* container start */
#rescontainer{
	width: 900px;
	height: 600px;
}
.content1{
    float: left;
    width: 50%;
    height: 50%;
	position: relative;
}

.content2{
    float: right;
    width: 50%;
    height: 50%;
	position: relative;
}

/* container end */
#modal {
	display: none;
	position:fixed;
	top:50%; 
  	left:50%;
  	transform: translate(-50%,-50%);
    z-index:1;
}
        
#modal h2 {
    margin:0;
}

#modal #modal_close_btn {
    display:inline-block;
    width:100px;
    margin-left:calc(100% - 100px - 10px);
}

#modal .btn_min {
	display:inline-block;
    width:15px;
    height:15px;
}

#modal .btn_plus {
	display:inline-block;
	width:15px;
    height:15px;
}
#modal .text_num {
	display:inline-block;
}
        
#modal .modal_content {
    width:300px;
    margin:100px auto;
    padding:20px 10px;
    background:#fff;
    border:2px solid #666;
}
        
#modal .modal_layer {
    position:fixed;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0, 0, 0, 0.5);
	z-index:-1;
}   
.button1{
	background:grey;
	fontcolor:white;
}
</style>
</head>
<body>
<div id="rescontainer">
	<input type="text" class="date">
	<div class="content1">
		<div id="datepicker"></div>
	</div>
	<div class="content2">
		<div class="time_select">
			<button type="button" class="button" value="11">11:00<br/>(8/8)</button>
			<input type="hidden" class="11" value="8">
			<button type="button" class="button" value="12">12:00<br/>(8/8)</button>
			<input type="hidden" class="12" value="8">
			<button type="button" class="button" value="13">13:00<br/>(8/8)</button>
			<input type="hidden" class="13" value="8">
			<button type="button" class="button" value="14">14:00<br/>(8/8)</button>
			<input type="hidden" class="14" value="8">
			<br><br>
			<button type="button" class="button" value="17">17:00<br/>(8/8)</button>
			<input type="hidden" class="17" value="8">
			<button type="button" class="button" value="18">18:00<br/>(8/8)</button>
			<input type="hidden" class="18" value="8">
			<button type="button" class="button" value="19">19:00<br/>(8/8)</button>
			<input type="hidden" class="19" value="8">
			<button type="button" class="button" value="20">20:00<br/>(8/8)</button>
			<input type="hidden" class="20" value="8">
			<button type="button" class="button" value="21">21:00<br/>(8/8)</button>
			<input type="hidden" class="21" value="8">
		</div>
		<div id="time"></div>
	</div>
</div> <!-- container -->

<div id="modal">
   
    <div class="modal_content"> 
        <p class="resDate"></p>
        <p class="resTime"></p>
        <p class="maxNum"></p>
        <div id="adult">성인
        	<button type="button" class="btn_min" id="btn_min">-</button>
        	<div class="text_num">0</div>
        	<button type="button" class="btn_plus" id="btn_plus">+</button>
        </div>
        <div id="kid">아동
        	<button type="button" class="btn_min" id="btn_min">-</button>
        	<div class="text_num">0</div>
        	<button type="button" class="btn_plus" id="btn_plus">+</button>
        </div>
       
       	<button type="button" id="resBtn">예약</button>
        <button type="button" id="modal_close_btn">취소</button>
       
    </div>
   
    <div class="modal_layer"></div>
</div>

<script>
$(function(){
	
	var date = new Date();
	var today = date.getFullYear() + '' + (date.getMonth()+1) + '' + date.getDate();
	$('.date').val(today);
	
	$.ajax({
		url: '/omakaseProject/res/getReserve',
		type: 'post',
		data: 'resDate=' + $('.date').val(),
		success: function(data){
			$.each(data, function(index, items){
				$('.button[value="' +items.resTime+ '"]').empty();
				var num = items.resAdult + items.resKid
				$('.'+items.resTime+'').val($('.'+items.resTime+'').val()-num);
				$('.button[value="' +items.resTime+ '"]').append(items.resTime+':00<br/>('+$('.'+items.resTime+'').val()+'/8)');
				if($('.'+items.resTime+'').val()==0) {
					$('.button[value="' +items.resTime+ '"]').css({"background-color": "grey", "color": "white"});
				}
// 				if($('.'+items.resTime+'').val()==0) {
// 					$('.button[value="' +items.resTime+ '"]').attr("class", "button1");
// 				}else {
// 					$('.button[value="' +items.resTime+ '"]').attr("class", "button");
// 				}
			});
		},
		error: function(err){
			console.log(err);
		}
			
		});
	
	$("#datepicker").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format 변경
      	     ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
      	     ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
             ,changeMonth: true //콤보박스에서 월 선택 가능                
             ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
             ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
             ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
             ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
             ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
             ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
             ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
             ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
             ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
             ,minDate: "0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
             ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후) 
           	 ,onSelect: function() {           		
                    		var date = $.datepicker.formatDate("yymmdd",$("#datepicker").datepicker("getDate"));
                     		$('.date').val(date);
                     		$.ajax({
                     			url: '/omakaseProject/res/getReserve',
                     			type: 'post',
                     			data: 'resDate=' + $('.date').val(),
                     			success: function(data){
                     				$('.button').empty();                
                     				for(var i=0; i<4; i++){
                     					$('input[type="hidden"]:eq('+i+')').not('.date').val(8);
                     					$('.button:eq('+i+')').append((11+i)+':00<br/>('+$('.'+(11+i)+'').val()+'/8)');
                     					$('.button:eq('+i+')').css({"background-color": "white", "color": "black"});
                     				}
                     				for(var i=4; i<9; i++){
                     					$('input[type="hidden"]:eq('+i+')').not('.date').val(8);
                     					$('.button:eq('+i+')').append((13+i)+':00<br/>('+$('.'+(13+i)+'').val()+'/8)');
                     					$('.button:eq('+i+')').css({"background-color": "white", "color": "black"});
                     				}
                     				$.each(data, function(index, items){
                     					$('.button[value="' +items.resTime+ '"]').empty();
                     					var num = items.resAdult + items.resKid
                     					$('.'+items.resTime+'').val($('.'+items.resTime+'').val()-num);
                     					$('.button[value="' +items.resTime+ '"]').append(items.resTime+':00<br/>('+$('.'+items.resTime+'').val()+'/8)');
                     					if($('.'+items.resTime+'').val()==0) {
                     						$('.button[value="' +items.resTime+ '"]').css({"background-color": "grey", "color": "white"});
                     					}
//                      					if($('.'+items.resTime+'').val()==0) {
//                      						$('.button[value="' +items.resTime+ '"]').attr("class", "button1");
//                      					}else {
//                      						$('.button[value="' +items.resTime+ '"]').attr("class", "button");
//                      					}
                     				});
                     			},
                     			error: function(err){
                     				console.log(err);
                     			}
                     				
                     			});
                 		}
	});
});   
$('.button').click(function(){
	if($('.'+$(this).val()+'').val() == 0){
		alert('예약이 마감되었습니다')
	}else{
		$('#adult > .text_num').text(0);
		$('#kid > .text_num').text(0);
		$('.resDate').text($('.date').val())
		$('.resTime').text($(this).val())
		$('.maxNum').text($('.'+$(this).val()+'').val()) 
		$('#modal').css('display', 'block');
	}
});

$('#adult > .btn_plus').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(($('#adult > .text_num').text() + $('#kid > .text_num').text()) > $('.maxNum').text()){
		alert('최대 정원을 초과했습니다')
 	}else{
		$('#adult > .text_num').text(num+1);
 	}
});

$('#adult > .btn_min').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(num>0){
		$('#adult > .text_num').text(num-1);
	}
});

$('#kid > .btn_plus').click(function(){
	var num = $('#kid > .text_num').text();
	num *=1;
 	if(($('#kid > .text_num').text() + $('#adult > .text_num').text()) > $('.maxNum').text()){
		alert('최대 정원을 초과했습니다')
 	}else{
		$('#kid > .text_num').text(num+1);
 	}
});

$('#kid > .btn_min').click(function(){
	var num = $('#kid > .text_num').text();
	num *=1;
	if(num>0){
		$('#kid > .text_num').text(num-1);
	}
});

$('#modal_close_btn').click(function(){
	$('#modal').css('display', 'none');
});

$('#resBtn').click(function(){
	if($('#adult > .text_num').text() + $('#kid > .text_num').text() > $('.maxNum').text()){
		alert('정원을 초과하였습니다');
	}else{
	$.ajax({
		url: '/omakaseProject/res/reserve',
		type: 'post',
		data: 'resDate=' + $('.resDate').text() 
			+ '&resTime=' + $('.resTime').text() 
			+ '&resAdult=' + $('#adult > .text_num').text()
			+ '&resKid=' + $('#kid > .text_num').text(),
		success: function(){
			alert("예약이 완료되었습니다");
			location.href='/omakaseProject/index';
		},
		error: function(err){
			console.log(err);
		}	
	});
	}
});
</script>
</body>
</html>