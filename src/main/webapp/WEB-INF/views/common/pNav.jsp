<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/css/input.css">
<link rel="stylesheet" href="/css/pNav.css">

<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
	$(function() {
		if('${loginID != null}' ){
			//let ws = new WebSocket("ws://124.50.95.45/chat");
			let ws = new WebSocket("ws://localhost/chat");
			ws.onmessage = function(e) {
				
				chatlist = JSON.parse(e.data);
				setReadOk();
				chat_list={chatlist};			
				make_chat(chat_list);
				make_chatRoom();
				
			}

			$("#chat_area").on("keydown", function(e) {
				let text = $('#chat_area');
					if (e.keyCode == 13 && text.val() !=='') {					
						let line = $("<div>");
						line.append(text.val());
						
						var obj ={}
						obj.room = getRoom();
						obj.message = text.val();	
						obj.nickname ='${nickname}';
						
						
						ws.send(JSON.stringify(obj));
						text.val("");
						return false;
					}
			})			
		}
		
	
	})
	
	
	
</script>
<style>
	#outline_box{
		min-height:600px;
		min-width:400px;
		position: fixed;
		right: 20px;
		bottom: 5px;
		z-index : 100;
		background-color : #f8f7ff;
 		border-radius: 40px 40px 10px 40px;
 		box-shadow: 0px 0px 15px 15px #9381ff;
 		text-aligin:center;	
 		display:none;	
	}
	.chat_head{
		max-height:590px;
		max-width:97%;
		background-color : #f8f7ff;
		padding:10px;
		border-radius: 40px 40px 10px 40px;
		margin:auto;
		margin-top:5px;
		z-index : 100;
		text-align :center;
		
	}
	
	
	#chat_container{
		height:450px;
		overflow-y:auto;
		-ms-overflow-style: none;
		scrollbar-width: none;
	}
	
	#chat_container::-webkit-scrollbar {
	    display: none; /* Chrome, Safari, Opera*/
	}
	.chat_room{
		display:none;
	}
	
	.card{
		border-radius: 0px 0px 10px 40px;
	}
	
	
	
	.text_test{
		height:300px;
		max-width:250px;
	}
	.card-body{
		overflow-y:auto;
		-ms-overflow-style: none;
		scrollbar-width: none;
		 
	}
	.card-body::-webkit-scrollbar {
	    display: none; /* Chrome, Safari, Opera*/
	}
	
	#chat_logo{
		width:100px;
	}
	
	.row.chat_room_list{
		margin-top:5px;
		border-radius: 20px;
		border-style:ridge;
		border:2px solid #9570EC;
		box-shadow:2px 5px 15px 5px gray;
		
		text-align: center;
	  text-transform: uppercase;
	  transition: 1s;
	  background-size: 200% auto;
	   color: black;
	   background-image: linear-gradient(to right, #EBE8F3 0%, #CFC0F3 51%, #B89CFA 100%);
	}
	
	
	.row.chat_room_list:hover{
	 cursor : pointer;
		color:white;
	  background-position: right center; /* change the direction of the change here */
	}

	#li_search{
	width:300px;
	}
	#search_btn{
	margin-left:1px;
	margin-right:1px;
	width:100%;
    border-radius: 10px;
    border: 0px;
    background-color: #9381FF;
    color: white;
    font-weight: bold;
	}
	
	#unread{
	position: absolute;
    top: 3px;
    right: 6px;
    width: 25px;
    height: 25px;
    color: white;
    font-weight: 1000;
    font-size: 13px;
    font-family: 'Noto Sans KR', sans-serif;
    border-radius: 70%;
    background-color: crimson;
    text-align: center;	
	}
	
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap');
	
</style>
</head>
<body>
	<div id="outline_box">	
		<div class="chat_main">
			<div class="row chat_head">
				<div class="col-2 " style="text-align:right;"><img src="/resources/img/chat/Cogwheel.png" class="chat_img"></div>
				<div class="col-6 " style="text-align:center;"><img src="/img/logo.png" class="chat_img" id="chat_logo"></div>				
				<div class="col-2 " style="text-align:right;">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              			<img src="/resources/img/chat/Search.png" class="chat_img" id="search_icon">
            	 </a>            
            	  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              		<li id="li_search">
					<span class="input input--jiro">
						<input class="input__field input__field--jiro" type="text" id="input-10" />
						<label class="input__label input__label--jiro" for="input-10">
							<span class="input__label-content input__label-content--jiro">대화할 상대의 닉네임 입력</span>
						</label>
					</span>
              			<button id="search_btn">검색!</button>
              		</li>
          		  </ul>
				</div>
				<div class="col-2 " style="text-align:right;"><img src="/resources/img/chat/Reply.png" class="chat_img" id="close_chat_img"> </div>
			</div>
			<div class="container" id="chat_container">
				<div class="row chat_room_list">
					
					<!-- <div class="col-3">	
						프로필사진
					</div>					
					<div class="col-6">
						<div class="row">
							<div class="col-12">채팅방이름</div>
						</div>
						<div class="row">
							<div class="col-12">마지막 채팅 내용</div>
						</div>
					</div>
					<div class="col-3">
						시간+아이콘
					</div> -->
				</div>
				
			</div>
		</div>
		
		<div class="chat_room">
			<div class="row chat_head">
				<div class="col-6 " style="text-align:left;">채팅방입니다</div>
				<div class="col-6 " style="text-align:right;"><img src="/resources/img/chat/Reply.png" id="back"> </div>
			</div>
			<section >
  <div class="container">

    <div class="row d-flex justify-content-center">
      <div class="col-12">

        <div class="card" id="chat2">
          
          <div class="card-body"  style=" position: relative; height: 400px" id="chat_contents">
			
<!-- 			<div class="d-flex flex-row justify-content-start"> -->
<!--               <div> -->
<!--               	<p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-start">닉네임</p>              	 -->
<!--                 <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-primary">상대가 쓴 글 </p>                 -->
<!--                 <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-start">00:15</p> -->
<!--               </div> -->
<!--             </div> -->
            
<!--             <div class="d-flex flex-row justify-content-end"> -->
<!--               <div>              	 -->
<!--               	<p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">닉네임</p> -->
<!--                 <p class="small p-2 me-3 mb-1 text-white rounded-3 bg-primary">내가 쓴 글</p>                 -->
<!--                 <p class="small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end">00:15</p> -->
<!--               </div> -->
<!--             </div> -->

          </div>
          <div class="card-footer text-muted d-flex justify-content-start align-items-center">         
            <span class="input input--minoru">
           			
					<input class="input__field input__field--minoru" type="text" id="chat_area" />		
					 <label class="input__label input__label--minoru" for="input-13">
						<span class="input__label-content input__label-content--minoru">채팅을 입력해보세요</span>
					</label>			
			</span>
          </div>
        </div>

      </div>
    </div>

  </div>
</section>
				
				
			
			
		</div>
			
	</div>
	
    <div class="pNav row">
    	
        <div class="mb-2 zoom">
        	<div id ="unread"></div>
            <img src="/img/chatBtn.png" class="pNav_icon" id="chat_icon" style="cursor:pointer; width:50px;height:50px;" >
            
        </div>
        
        <div class="mb-1 zoom">
            <img src="/img/upBtn.png" class="pNav_icon" style="cursor:pointer; width:50px; height:50px;" onclick="window.scrollTo(0,0);">    
        </div>        
    </div>

<script>

//채팅모달 열기
let modal = 0;
let room = 0; // 채팅방식별용

function setReadOk(){
	
	$.ajax({
		url:"/chat/pnav_readok",
		data:{nickname:'${nickname}'},
		async:false,
	}).done(function(result){
		
		if(result==0){
			$("#unread").css("display","none");
		}else{
			$("#unread").css("display","inline");
			if(result>99){
				$("#unread").text("99+");				
			}else{
				$("#unread").text(result);
			}
		}
				
	});	
	
}

function setRoom(putroom){
	return room=putroom;
}
function getRoom(){
	return room;
}

$("#unread").on("click",function(){
	if(modal==0){
		$("#outline_box").css("display","inline");
		$(".pNav").css("display","none");
		modal+=1;
		//채팅창 열림
		
		//아래는 채팅방 목록 불러오기
		make_chatRoom();
		
	}
})

$("#chat_icon").on("click",function(){
	
	if(modal==0){
		$("#outline_box").css("display","inline");
		$(".pNav").css("display","none");
		modal+=1;
		//채팅창 열림
		
		//아래는 채팅방 목록 불러오기
		make_chatRoom();
		
	}
})
//채팅모달 열기


// window.onpopstate = function(event) {   //주소변경감지 이벤트
// 		console.log(location.href);	
// 		//history.replaceState({}, null, location.pathname);
// }

$("#close_chat_img").on("click",function(){
	$("#outline_box").css("display","none");
	$(".pNav").css("display","inline");
	modal-=1;
	setReadOk();
})

//방열때
	$(".open_room").on("click",function(){	
		setRoom($(this).attr("id")) ; //방번호 세팅
		
		open_room(getRoom());//매개변수로 방번호 넣어줌
		
	})
	
function open_room(room){
	$(".chat_main").css("display","none");
	$(".chat_room").css("display","inline");
	
	
	//이전 채팅 내역 삭제
	let chat_log = $(".card-body").children();
	chat_log.remove();
	//db에서 채팅내역 불러와서 방번호에 맞게 띄워줘야 함.
	let room_code = getRoom(); //방번호
	
	$.ajax({
		url:"/chat/selectList",
		data:{room:room_code},
		async:false,
	}).done(function(result){
		
		make_chat(result);
					
	});
	
	//메세지 읽음 처리
	$.ajax({
		url:"/chat/update_readok",
		data:{room:room_code,nickname:'${nickname}'},
		async:false,
	})
}


$("#back").on("click",function(){
	$(".chat_main").css("display","inline");
	$(".chat_room").css("display","none");
	make_chatRoom();
})

$("#search_btn").on("click",function(){
	search();
	make_chatRoom();
})

//채팅망 목록
function search(){
	let invite_nickname = $("#input-10").val();
	let my_nickname = '${nickname}';
	
	
	$.ajax({
		url:"/chat/search",
		dataType:"json",
		data:{invite_nickname:invite_nickname,my_nickname:my_nickname},
		async:false,
	}).done(function(result){
		
	});
}

function updateScroll() {
            var element = document.getElementById("chat_contents");
            $(element).scrollTop(element.scrollHeight);
        }

//채팅방 말풍선
function make_chat(result){
	
	for(let i =0; i<result.chatlist.length; i++){
		if('${nickname}'==result.chatlist[i].nickname){
			let line = $("<div class='d-flex flex-row justify-content-end'>");
			let div = $("<div>");
			let p1 =$("<p class='small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end'>");
			let p2 =$("<p class='small p-2 me-3 mb-1 text-white rounded-3 bg-primary' style='max-width:250px;'>");
			let p3 =$("<p class='small me-3 mb-3 rounded-3 text-muted d-flex justify-content-end'>");
			
			p1.append(result.chatlist[i].nickname);
			p2.append(result.chatlist[i].message);
			p3.append(result.chatlist[i].write_date);
			div.append(p1);
			div.append(p2);
			div.append(p3);
			line.append(div);
			$(".card-body").append(line);
			}else{
				let line = $("<div class='d-flex flex-row justify-content-start'>");
				let div = $("<div>");
				let p1 =$("<p class='small me-3 mb-3 rounded-3 text-muted d-flex justify-content-start'>");
				let p2 =$("<p class='small p-2 me-3 mb-1 text-white rounded-3 bg-primary' style='max-width:250px'>");
				let p3 =$("<p class='small me-3 mb-3 rounded-3 text-muted d-flex justify-content-start'>");
				
				p1.append(result.chatlist[i].nickname);
				p2.append(result.chatlist[i].message);
				p3.append(result.chatlist[i].write_date);
				div.append(p1);
				div.append(p2);
				div.append(p3);
				line.append(div);
				$(".card-body").append(line);
			}
			updateScroll();
	}
}

function make_chatRoom(){
	
	$.ajax({
		url:"/chat/selectChatRoom",
		data:{nickname:'${nickname}'},
		dataType:"json",
		async:false,
	}).done(function(room){
		
		if(room.length>0){

			$("#chat_container").children().remove();
			
			for(let i =0; i<room.length; i++){
				
				
				let row_div =  $("<div class='row chat_room_list'>");
				
				let img_div = $("<div class='col-3'>"); //프사
				
				let col6_div = $("<div class='col-6'>");
				
				let colorow_1_div = $("<div class='row'>");
				let col10_1_div = $("<div class='col-10'>");
				let col2_1_div = $("<div class='col-2'>");
				
				
				col6_div.attr("id",room[i].room);
				col6_div.attr("class","col-5 open_room");
				
				let colorow_2_div = $("<div class='row'>");
				let col12_2_div = $("<div class='col-12'>");
				
				let time_div = $("<div class='col-4'>");
				
				
				
				//내용
				img_div.append("프사");
				col10_1_div.append(room[i].roomname);	 //대화상대이름
				if(room[i].readok != 0){
					
					col2_1_div.append(room[i].readok);	//안읽은 메시지
				}				
				col12_2_div.append(room[i].message);	
				time_div.append(room[i].write_date);
				
				
				
				//내용
				
				
				colorow_1_div.append(col10_1_div);
				colorow_1_div.append(col2_1_div);
				colorow_2_div.append(col12_2_div);
				
				col6_div.append(colorow_1_div);
				col6_div.append(colorow_2_div);
				
				row_div.append(img_div);
				row_div.append(col6_div);
				row_div.append(time_div);
				
				$("#chat_container").append(row_div);
		}
			
			$(".open_room").on("click",function(){	
				
				setRoom($(this).attr("id")) ; //방번호 세팅
				open_room(getRoom());//매개변수로 방번호 넣어줌
				
			})
			
			
			
		}
								
	});
	
	
}

</script>

</body>

</html>