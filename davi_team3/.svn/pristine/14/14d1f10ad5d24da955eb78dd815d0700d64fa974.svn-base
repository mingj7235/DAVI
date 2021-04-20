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
		<title>게시물 작성 </title>
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
				
			input[type="text"], 
			input[type="text"]:focus{
				border:0;
				border-bottom: solid 1px #ffaec9;
				border-radius:0;
				box-shadow: none;
			}
			
			.board_content:focus {
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
			
		</style>
		
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

				
				<!-- body -->
				<div style="display: flex; justify-content: center; margin:10px 0; padding-top: 5px;">
					<h1>게시물 만들기</h1>
				</div>
				<form name="certificatedWriteForm">
					<div style="display: flex; justify-content: center;">
						<div style="width: 80%; height: 420px; border: 1px solid rgba(164, 167, 170, 0.3);">
							<!-- 게시글 작성자 프로필, 닉네임, 제목 -->
							<div style="display : flex; justify-content: center; height: 40px;">
								<div style="width:20%;">
								
									<div style="position:relative; width:100%; height: 0; padding-bottom:100%; ">
								<img src="${sessionScope.path}${sessionScope.filename}" style="display:inline-block; width:100%; height:110%; position:absolute; top:0; left:0; margin: 5px; border: 1px solid rgba(0, 59, 251, 0.3);">
								</div>

								</div>
							
							<!-- 게시글 제 -->
							
								<div style="width: 70%; display:flex; justify-content: center;">
									<input type="text" class="board_content" id="certificatedTitle" name="certificatedTitle" placeholder="게시글 제목" style="border:0; border-bottom: 1px solid rgba(0, 59, 251, 0.3); 
										resize:none; height:40px; padding: 5px; margin: 5px; margin-top: 18px; margin-left: 18px;">
								</div>
								<div style="width:10%; text-align: right; padding-top: 10px; padding-right: 10px; color:rgba(0, 59, 251, 0.3);">
									<i class="fas fa-ellipsis-h" onclick="#" style="cursor: pointer;"></i>
								</div>	
							</div>

							
						
							<!-- 게시글 본문 -->
							<div style="display:flex; justify-content: center;">
								<textarea class="board_content" id="certificatedContent" name="certificatedContent" placeholder="게시글을 작성해보세요 :)" style="border:0; border-bottom: 1px solid rgba(0, 59, 251, 0.3); 
									resize:none; height:250px; padding: 5px; margin: 5px; margin-top:15%;"></textarea>
							</div>
							
								<!-- 사진 업로드 -->
							<div style="display:flex; justify-content: center;">
								<input id="" name="" type="button" value="미리보기" style="box-shadow: none; font-size: 1em;" onclick="javascript:preview()">
								<input id="writeButton" type="button" value="인증하기" style="box-shadow: none; font-size: 1em;" onclick="javascript:writeBoard()">
							</div>
							<input type="hidden" name="memberId" value="${sessionScope.session_id}">
							<input type="hidden" name="certificatedPath" value="${path}">
							<input type="hidden" name="certificatedFileName" value="${filename}">
							
						</div>
							
					</div><!-- end 일반게시판 게시물 div박스-->
				</form>
			</div>
						
		</div>
				
				<!-- board body end -->

	</div>
			
			

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
			<script>
			function preview() {
				var width = '500';
			    var height = '700';
			    var left = Math.ceil(( window.screen.width - width )/2);
			    var top = Math.ceil(( window.screen.height - height )/2); 
			    window.open('${pageContext.request.contextPath}/app/board/certificated_normal_board_preview.jsp', 'preview', 'width='+ width +', height='+ height +', left=' + left + ', top='+ top );
			    certificatedWriteForm.action = "${pageContext.request.contextPath}/app/board/certificated_normal_board_preview.jsp";
			    certificatedWriteForm.target = 'preview';
			    certificatedWriteForm.submit();
			}
			
			
			
/* 			function writeBoard () {
				if(title =="" || content =="") {
					alert ('제목과 게시글 모두 작성해주세요');
				}else {
					window.opener.name = "parentPage";
					certificatedWriteForm.action = contextPath + "/board/certificateWriteOk.bo";
					certificatedWriteForm.target =  "parentPage";
					certificatedWriteForm.submit();
					self.close();
				}
			} */
			
			
			$("#writeButton").click(function() {
				var title = $("#certificatedTitle").val();
				var content = $("#certificatedContent").val();
				if (title != "") {
					if(content != "") {
						window.opener.name = "parentPage";
						certificatedWriteForm.action = contextPath + "/board/certificateWriteOk.bo";
						certificatedWriteForm.target =  "parentPage";
						certificatedWriteForm.submit();
						self.close();
						
					}else {
						alert ('본문을 작성해주세요 😅');
					}
					
				} else {
					alert ('제목을 작성해주세요 😅');
				}
			}); 
			
			</script>
			
			
			

	</body>
</html>