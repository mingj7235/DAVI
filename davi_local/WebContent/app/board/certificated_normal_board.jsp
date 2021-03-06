<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Editorial by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>인증게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
		<style>
			body{
					font-family: 'Sunflower', sans-serif;
				}
				
			h1, h2, h3, h4, h5, h6 {
					font-family: 'Sunflower', sans-serif;
				}
				
			.board_basic {
					border : 1px solid black; 
			
				}
			
			.certificated_box {
				border : 1px solid rgba(164, 167, 170, 0.3);
				padding : 0.5em;
			}
			
			.certificated_textarea {
				border : 0;
				border-bottom : 1px solid rgba(0, 59, 251, 0.3);
			}
			
			input[type="text"], 
			input[type="text"]:focus{
				border:0;
				border-bottom: solid 1px #ffaec9;
				border-radius:0;
				box-shadow: none;
			}
			
			.profile {
				border-radius: 40%;
			}
			
			.board_main_box {
			
			}
			
			.icon_color {
				color : rgba(0, 59, 251, 0.3);
			}
			
			
			
			
			
		</style>
		
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<c:import url="/app/header/header.jsp" />
				
				<!-- body -->
				<div style="display: flex; justify-content: center;">
					<article style="width:50%; margin-bottom: 60px;"> 
						<!-- 일반게시판 글쓰기 아웃라인 -->
						<form action="#">
							<div class ="certificated_box" style="height: auto; margin-top: 50px; ">
								<div style="display:flex; justify-content: center;">
									<img id="" name="" class="profile" src="${pageContext.request.contextPath}/images/logo_blue.png" alt="" style=" margin:5px; width: 35px; height: 35px;
										cursor: pointer;" onclick="#"/>
									<textarea class="certificated_textarea" id="" name="" placeholder="게시글을 작성해보세요" style=" 
										resize:none; height:40px; padding: 5px; margin: 5px;" readonly="readonly" onclick="popup()"></textarea>
									<input id="" name="" type="submit" value="등록" style="margin:5px;">
								</div>
									<!-- 사진 업로드 -->
								<div style="display:flex; justify-content: center;">
									<a class ="icon_color" href="#" style="display:flex; justify-content: center; width:30%; border-bottom: none; ">
										<div style="margin: 1px;">
											<i class="fas fa-images"></i>
										</div>
										<div style="color:#9FA3A6; margin-left: 3px;">사진 첨부하기</div>
									</a>
								</div>
							</div>
						</form>
						<!-- 일반게시판 전체 아웃라인 -->
						<div class="certificated_box" style="height: auto; margin-top: 20px; padding-bottom:30px; border-bottom: none;">
							<!-- 작성자 -->
							<div style="display : flex; justify-content: center; height: 30px;">
								<div style="width:10%;">
								<img id="" name="" class="profile" src="${pageContext.request.contextPath}/images/logo_blue.png" alt="" style="margin:5px; width: 35px; height: 35px;
									cursor: pointer;" onclick="#"/> <!-- 프로필 사진 클릭시 해당 계정으로 이동 -->
								</div>
								<div id="" style="width:10%; padding-top: 10px; margin-left: 5px;">(#)</div>
								<div class="icon_color" style="width:80%; text-align: right; padding-top: 10px; padding-right: 10px;">
									<i class="fas fa-ellipsis-h" onclick="#" style="cursor: pointer;"></i>
								
								</div>
							</div>
							
							<!-- 게시판 제목 -->
							<div style="height: 30px; padding-top: 5px; margin:5px;">
								<h4>글 제목 </h4>
							</div>
							
							<!-- 사진 -->
							<div style="width: 70%; margin: 3% auto;">
								<div style="position:relative; width:100%; height: 0; padding-bottom:100%; ">
									<img src="${pageContext.request.contextPath}/images/비서.jpg" style="display:inline-block; width:100%; height:100%; position:absolute; top:0; left:0; ">
								</div>
							</div>
							
							<!-- 아이콘들 (다이아몬드, 댓글아이콘등) -->
							<div class="icon_color" style="display : flex; justify-content: flex-start; height: 35px; padding: 5px;">
								<div style="font-size: 0.9rem; padding-top: 2px;">
									<i class="far fa-gem fa-lg" style="cursor: pointer; onclick="changeDiamond()"></i>
									<i class="" style="display: none;"></i>
								</div>
								<div style="font-size: 0.95rem;">
									<i class="far fa-comment fa-lg" style="cursor: pointer; margin-left: 9px;" onclick="#"></i>
								</div>
							</div>
							 
							<!-- 좋아요 숫자  -->
							<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">
								<div>좋아요</div>
								<div class ="icon_color" id="diamond_num" >#</div>
								<div>개</div>
							</div>
							
							<!-- 본문  -->					
							<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">
								<div id="" style="width: 20%;">글쓴이 </div>
								<div id="mainPreview" style="width: 70%;">본문내용</div>
								<textarea class="certificated_textarea" id="mainDetail" style="display: none; height: 50px; resize: none;" readonly="readonly">본문내용</textarea>
								<div id="iconplus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">
									<i id="" class="far fa-plus-square icon_color"></i>
								</div>

								<div id="iconmore" style="width: 10%; text-align: right; margin: 0 5px; display: none; cursor: pointer;">
									<input id=""type="button" value="더보기" style="box-shadow: none; padding : 0 5px;;color: rgba(0, 59, 251, 0.3) !important;" onclick="mainDetail()">
								</div>
							</div>
							
							<!-- 댓글 -->
							
							<%--  
							<c:if test="">
								<c:forEach>
							
							--%>
									<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">
										<div style="width: 20%;">댓글쓴이</div>
										<div style="width: 70%;">댓글</div>
										<div id="iconminus" style="width: 10%; text-align: right; margin: 0 5px; cursor: pointer;">
											<i id="" class="far fa-minus-square icon_color" onclick=""></i>
										</div>
										<div id="iconminusmore" style="width: 10%; text-align: right; margin: 0 5px; display: none; cursor: pointer;">
											<input id=""type="button" value="삭제" style="box-shadow: none; padding : 0 5px;;color: rgba(0, 59, 251, 0.3) !important;">
										</div>
										
										<!-- <input type="button" value="게시" style="box-shadow: none; width: 10%; margin: 0 5px; color: rgba(0, 59, 251, 0.3) !important;"> -->
									</div>

							<%--  
							</c:forEach>
								</c:if>
							
							--%>
							
							<!-- 댓글 입력 칸 -->
							
							<div style="display : flex; justify-content: flex-start; height: 30px; padding: 5px;">
								<div style="width: 20%; padding-top: 5px;">접속아이디 </div>
								<input type="text" placeholder="댓글을 작성해주세요" style="width:70%; border:0; border-bottom: 1px solid rgba(0, 59, 251, 0.3);"/>
								<input type="button" value="등록" style="width:10%; margin: 0 5px; box-shadow: none; color: rgba(0, 59, 251, 0.3)!important">
							</div>
							
						</div><!-- end 일반게시판 게시물 div박스-->
						<div style="height: 20px; border-top : 1px solid rgba(164, 167, 170, 0.3);)">
						
						
						</div>
						
					</article>
						
				</div>
				
				<c:import url="/app/footer/footer_test.jsp"></c:import>
				<!-- board body end -->

				</div>
			</div>
				<!-- Sidebar -->
			<%-- 	<c:import url="/app/footer/footer.jsp" />		
 --%>			</div>

		<!-- Scripts -->
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script>
				function popup() {
					/* 배경화면 투명도를 낮추기  */
					/* document.getElementById("wrapper").style.backgroundColor = "black";
					document.getElementById("wrapper").style.opacity = "0.3%"; */
					
					var width = '700';
				    var height = '510';
				    var left = Math.ceil(( window.screen.width - width )/2);
				    var top = Math.ceil(( window.screen.height - height )/2); 
				    window.open('${pageContext.request.contextPath}/app/board/certificated_normal_board_write.jsp', '게시물 작성', 'width='+ width +', height='+ height +', left=' + left + ', top='+ top );
					
				}
				
				//플러스 버튼 hover 이벤트
				var iconplus = $('#iconplus');
				var iconmore = $('#iconmore');
				
				iconplus.hover(function() {
					iconplus.css('display', 'none');
					iconmore.css('display', '');
					
				});
				
				iconmore.hover(function () {
					
					
				}, function (){
					iconplus.css('display', '');
					iconmore.css('display', 'none');
				});
				
				//마이너스 버튼 hover 이벤트
				var iconminus = $('#iconminus');
				var iconminusmore = $('#iconminusmore');
				
				iconminus.hover(function() {
					iconminus.css('display', 'none');
					iconminusmore.css('display', '');
					
				});
				
				iconminusmore.hover(function () {
					
					
				}, function (){
					iconminus.css('display', '');
					iconminusmore.css('display', 'none');
				});
				
				
/* 				$(function() {
					$('#iconplus').mouseenter(function () {
						$('#iconplus').hide();
						$('#iconmore').show();
					};
					
					$('#iconmore').mouseleave(function () {
						$('#iconmore').hide();
						$('#iconplus').show();
					})
				}); */
				//+버튼 (더보기 hover이벤트)
 				 /*$(document).ready(function () {
					$('#iconplus').hover(function () {
						 if($("#iconmore").css("display") == "none") { 
							$("#iconplus").hide();
							$("#iconmore").show();
						 	} 
					}, function () {
							$("#iconplus").show();
							$("#iconmore").hide();
					})
				}); */
				
				//-버튼 (삭제 hover이벤트)
 				/*$(document).ready(function () {
					$('#iconminus').hover(function () {
							$("#iconminus").hide();
							$("#iconminusmore").show();
					}, function () {
							$("#iconminus").show();
							$("#iconminusmore").hide();
					})
				}); */
				
				/* 비어져있는 아이콘, 채워져있는 아이콘 두개 가지고와서 display none을 js로 변환하기 */
				var diamondCheck = false;
				function changeDiamond() {
					if(!diamondCheck) {
						document.
						/* display를 none으로 변경하고 다른 icon을 가져와서(채워져있는 다이아몬드 ) */
						diamondCheck = true;
						
					}
						
				}
				
				//본문 내용 더보기 버튼 (마이너스 버튼 활성화 시키기)
				var mainDetailCheck = false;
				/* function mainDetail(){
					$("#mainDetail").show();
					$("#mainPreview").hide();
					iconplus.css('display', 'none');
					iconmore.css('display', 'none');
				} */
				
			
			</script>

	</body>
</html>