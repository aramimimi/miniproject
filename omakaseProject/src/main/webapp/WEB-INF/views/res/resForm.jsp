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
dt {
	display: none;
}


.list_time a {
	display: inline-block;
	border: 1px solid black;
	float: left;
	margin-right: 10px;
	text-decoration: none;
	color: black;
	font-size: 14px;
}
.list_time a:after{
	clear: both;
}

/* button{ position:absolute; top:50%; left:50%; */
/*   width:120px; height:30px; margin-top:-15px; margin-left:-60px; */
/*   line-height:15px; cursor:pointer; */
/* } */

.modal{ 
  position:absolute; width:100%; height:100%; background: rgba(0,0,0,0.8); top:0; left:0; display:none;
}

.modal_content{
  width:400px; height:400px;
  background:#fff; border-radius:10px;
  position:relative; top:30%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px;
}

.modal .btn_min {
	display:inline-block;
    width:15px;
    height:15px;
}

.modal .btn_plus {
	display:inline-block;
	width:15px;
    height:15px;
}
.modal .text_num {
	display:inline-block;
}

/* container end */
</style>
</head>
<body>
<div id="rescontainer">
	<input type="hidden" class="date">
	<div class="content1">
		<div id="datepicker"></div>
	</div>
	<div class="content2">
		<div class="time_select">
			<ul class="list_time">
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>11</dt>
							<dd class="time">
								<strong>11:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>12</dt>
							<dd class="time">
								<strong>12:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>13</dt>
							<dd class="time">
								<strong>13:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>14</dt>
							<dd class="time">
								<strong>14:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<br><br><br><br>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>17</dt>
							<dd class="time">
								<strong>17:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>18</dt>
							<dd class="time">
								<strong>18:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>19</dt>
							<dd class="time">
								<strong>19:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>20</dt>
							<dd class="time">
								<strong>20:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				<li>
					<a role="button" href="#none">
						<dl>
							<dt>21</dt>
							<dd class="time">
								<strong>21:00</strong>
							</dd>
							<dt>ėėŽė</dt>
							<dd class="seat">
								<strong></strong>
							 / 8
							</dd>
						</dl>
					</a>
				</li>
				
			</ul>
		</div>
	</div>
</div> <!-- container -->


<div class="modal">
  <div class="modal_content">
  	<p class="resDate"></p>
  	<p class="resTime"></p>
  	<p class="maxNum"></p><br>
  	<div id="adult">ėąėļ
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<div id="kid">ėë
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<br>
  	<div id="menuA">Aė―ėĪ
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
  	<div id="menuB">Bė―ėĪ
  		<button type="button" class="btn_min" id="btn_min">-</button>
  		<div class="text_num">0</div>
  		<button type="button" class="btn_plus" id="btn_plus">+</button>
  	</div>
    <br>
  	<button type="button" id="resBtn">ėė―</button>
  	<button type="button" id="modal_close_btn">ė·Ļė</button>
  </div>
</div>



<script>
$(function(){
	var date = new Date();
	var today = date.getFullYear() + '' + (date.getMonth()+1) + '' + date.getDate();
	$('.date').val(today);
	
	for(var i=0; i<9; i++){
		$('#rescontainer .content2 li .seat strong:eq(' + i + ')').text(8);
		$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "white", "color": "black"});	
	}
	
	$.ajax({
		url: '/omakaseProject/res/getReserve',
		type: 'post',
		data: 'resDate=' + $('.date').val(),
		success: function(data){
			$.each(data, function(index, items){
				for(var i=0; i<9; i++){
					if($('#rescontainer .content2 li .time:eq('+ i +')').prev().text() == items.resTime){
						var num = items.resAdult + items.resKid;
						var seat = $('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text();
						$('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text(seat-num);
						if($('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text() == 0) {
								$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "grey", "color": "white"});
						}//if
					}//if
				}//for
			
			});
		},
		error: function(err){
			console.log(err);
		}
	});

	$("#datepicker").datepicker({
		 dateFormat: 'yy-mm-dd' //Input Display Format ëģęē―
      	     ,showOtherMonths: true //ëđ ęģĩę°ė íėŽėė ėëĪėė ë ė§ëĨž íė
      	     ,showMonthAfterYear:true //ëë ëĻžė  ëėĪęģ , ëĪė ė íė
             ,changeMonth: true //ė―Īëģīë°ėĪėė ė ė í ę°ëĨ                
             ,showOn: "both" //button:ëēížė íėíęģ ,ëēížė ëëŽėžë§ ëŽë Ĩ íė ^ both:ëēížė íėíęģ ,ëēížė ëëĨīęą°ë inputė íīëĶ­íëĐī ëŽë Ĩ íė  
             ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //ëēíž ėīëŊļė§ ęē―ëĄ
             ,buttonImageOnly: true //ęļ°ëģļ ëēížė íė ëķëķė ėė ęģ , ėīëŊļė§ë§ ëģīėīęē íĻ
             ,buttonText: "ė í" //ëēížė ë§ė°ėĪ ę°ëĪ ëė ë íėëë íėĪíļ                
             ,yearSuffix: "ë" //ëŽë Ĩė ëë ëķëķ ëĪė ëķë íėĪíļ
             ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //ëŽë Ĩė ė ëķëķ íėĪíļ
             ,monthNames: ['1ė','2ė','3ė','4ė','5ė','6ė','7ė','8ė','9ė','10ė','11ė','12ė'] //ëŽë Ĩė ė ëķëķ Tooltip íėĪíļ
             ,dayNamesMin: ['ėž','ė','í','ė','ëŠĐ','ęļ','í '] //ëŽë Ĩė ėėž ëķëķ íėĪíļ
             ,dayNames: ['ėžėėž','ėėėž','íėėž','ėėėž','ëŠĐėėž','ęļėėž','í ėėž'] //ëŽë Ĩė ėėž ëķëķ Tooltip íėĪíļ
             ,minDate: "0D" //ėĩė ė íėžė(-1D:íëĢĻė , -1M:íëŽė , -1Y:ėžëė )
             ,maxDate: "+1M" //ėĩë ė íėžė(+1D:íëĢĻí, -1M:íëŽí, -1Y:ėžëí) 
           	 ,onSelect: function() {           		
                    		var date = $.datepicker.formatDate("yymmdd",$("#datepicker").datepicker("getDate"));
                     		$('.date').val(date);
                     		for(var i=0; i<9; i++){
                     			$('#rescontainer .content2 li .seat strong:eq(' + i + ')').text(8);
                     			$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "white", "color": "black"});
                     		}
                     		$.ajax({
                     			url: '/omakaseProject/res/getReserve',
                     			type: 'post',
                     			data: 'resDate=' + $('.date').val(),
                     			success: function(data){
                     				$.each(data, function(index, items){
                     					for(var i=0; i<9; i++){
                     						if($('#rescontainer .content2 li .time:eq('+ i +')').prev().text() == items.resTime){
                     							var num = items.resAdult + items.resKid;
                     							var seat = $('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text();
                     							$('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text(seat-num);
                     							if($('#rescontainer .content2 li .time:eq('+ i +')').parents('dl').find('.seat strong').text() == 0) {
                     								$('#rescontainer .content2 li .time:eq('+ i +')').parents('a').css({"background-color": "grey", "color": "white"});
                     							}//if
                     						}//if
                     					}//for
                     				
                     				});
                     			},
                     			error: function(err){
                     				console.log(err);
                     			}
                     		});
                 		}
	});
});   


$('.list_time a').click(function(){
	if($(this).find('.seat strong').text() == 0){
		alert('ėė―ėī ë§ę°ëėėĩëëĪ')
	}else{
		$('.modal .resDate').text($('.date').val());
		$('.modal .resTime').text($(this).find('.time').prev().text());
	 	$('.modal .maxNum').text($(this).find('.seat strong').text());
		$('#adult > .text_num').text(0);
		$('#kid > .text_num').text(0);
		$('.modal').fadeIn();
	}
});
	  
$("#modal_close_btn").click(function(){
	$(".modal").fadeOut();
});
	  
$('#adult > .btn_plus').click(function(){
	var num = $('#adult > .text_num').text();
	num *=1;
	if(($('#adult > .text_num').text()*1 + $('#kid > .text_num').text()*1) >= $('.maxNum').text()){
		alert('ėĩë ė ėė ėīęģžíėĩëëĪ')
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
 	if(($('#kid > .text_num').text()*1 + $('#adult > .text_num').text()*1) >= $('.maxNum').text()){
		alert('ėĩë ė ėė ėīęģžíėĩëëĪ')
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

$('#menuA > .btn_plus').click(function(){
	var num = $('#menuA > .text_num').text();
	num *=1;
	$('#menuA > .text_num').text(num+1);
});

$('#menuA > .btn_min').click(function(){
	var num = $('#menuA > .text_num').text();
	num *=1;
	if(num>0){
		$('#menuA > .text_num').text(num-1);
	}
});

$('#menuB > .btn_plus').click(function(){
	var num = $('#menuB > .text_num').text();
	num *=1;
	$('#menuB > .text_num').text(num+1);
});

$('#menuB > .btn_min').click(function(){
	var num = $('#menuB > .text_num').text();
	num *=1;
	if(num>0){
		$('#menuB > .text_num').text(num-1);
	}
});

$('#resBtn').click(function(){
	$.ajax({
		url: '/omakaseProject/res/reserve',
		type: 'post',
		data: 'resDate=' + $('.resDate').text() 
			+ '&resTime=' + $('.resTime').text() 
			+ '&resAdult=' + $('#adult > .text_num').text()
			+ '&resKid=' + $('#kid > .text_num').text()
			+ '&resMenuA=' + $('#menuA > .text_num').text()
			+ '&resMenuB=' + $('#menuB > .text_num').text(),
		success: function(){
			alert("ėė―ėī ėëĢëėėĩëëĪ");
			location.href='/omakaseProject/index';
		},
		error: function(err){
			console.log(err);
		}	
	});
});
</script>
</body>
</html>