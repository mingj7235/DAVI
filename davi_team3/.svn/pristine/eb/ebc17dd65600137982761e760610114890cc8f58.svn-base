<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>사진 등록 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
		<style>
			body, input{
					font-family: 'Sunflower', sans-serif !important;
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
					<h1>사진 선택하기</h1>
				</div>
				<form id="photoForm" name="photoForm" method="post" action="${pageContext.request.contextPath}/board/certificatePhotoOk.bo" enctype="multipart/form-data">
					<div style="display: flex; justify-content: center;">
						<div style="width: 80%; height: auto; border: 1px solid rgba(164, 167, 170, 0.3);">
							<!-- 게시글 작성자 프로필, 닉네임, 제목 -->
							<div style="display : flex; justify-content: center; height: 40px;">
								<div style="width:10%;">
								<img id="" name="" class="profile" src="${pageContext.request.contextPath}/images/logo_blue.png" alt="" style="margin:5px; width: 35px; height: 35px;
									cursor: pointer;" onclick=""/> <!-- 프로필 사진 클릭시 해당 계정으로 이동 -->
								</div>
								
								<div style="width : 45%; display:flex; justify-content: center; margin-top: 2%; margin-left: 23%;">
								<a href="javascript:realClick();" style="display:flex; justify-content: center; border-bottom: none; color:rgba(0, 59, 251, 0.3);">
									<div style="margin: 1px;">
										<i class="fas fa-images"></i>
									</div>
									<div style="color:#9FA3A6; margin-left: 3px;">사진 첨부하기</div>
								</a>						
 									<input type="file" id="real-input" name ="real-input" class="image_inputType_file" accept="image/*" style="display: none;" required multiple/>
 								</div>
								
								<div style="width: 45%; text-align: right; display:flex; justify-content: flex-end;">
									<input type="button" value="다음" style="box-shadow: none; font-size: 1em; padding-right: 2%; padding-left: 2%;" onclick="javascript:nextButton()"/>
								</div>
								<!-- <div style="width:80%; text-align: right; padding-top: 10px; padding-right: 10px; color:rgba(0, 59, 251, 0.3);">
									<i class="fas fa-ellipsis-h" onclick="#" style="cursor: pointer;"></i>
								</div>	 -->
							</div>
							<!-- 게시글 제 -->
							<hr style="border-bottom : solid 1px rgba(0, 59, 251, 0.3); margin: 3% 1%;">
						
							<!-- 게시글 본문 -->
							<div style="display:flex; justify-content: center;">
								<!-- <textarea class="board_content" id="" name="" style="border:0; border-bottom: 1px solid rgba(0, 59, 251, 0.3); 
									resize:none; height:300px; padding: 5px; margin: 5px; color: rgba(0, 59, 251 0.3)" readonly="readonly">사진을 등록해주세요 :-)
								</textarea> -->
								
								<div id="imagePreview" style="width:100%; height: 300px; border: none;">
									<img id="imgView" style="width: inherit; height: inherit; object-fit: contain; border: none;"/>
								</div>
							</div>
							
								<!-- 사진 업로드 -->
						</div>
							
					</div><!-- end 일반게시판 게시물 div박스-->
				</form>
			</div>
						
		</div>
				
				<!-- board body end -->

				</div>
			</div>
			</div>

		<!-- Scripts -->
			<script>var contextPath = "${pageContext.request.contextPath}";</script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
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
			    window.open('${pageContext.request.contextPath}/app/board/certificated_normal_board_preview.jsp', '미리보기', 'width='+ width +', height='+ height +', left=' + left + ', top='+ top );
				
			}					
			
			function nextButton() {
				var photoPath = $("#real-input").val();
				var form = document.getElementById("photoForm");
				if(photoPath == "") {
					alert('사진을 넣어주세요');
					console.log('실패')
				} else {
					form.submit();
					console.log('성공')
				}
			}
			
			function realClick() {
				document.querySelector('#real-input').click();
			}
			
			function readInputFile(e){
			    var sel_files = [];			    
			    sel_files = [];
			    //$('#imagePreview').empty();
			    
			    var files = e.target.files;
			    var fileArr = Array.prototype.slice.call(files);
			    var index = 0;
			    
			    fileArr.forEach(function(f){
			    	if(!f.type.match("image/.*")){
			        	alert("이미지만 업로드 가능합니다.");
			            return;
			        };
			        if(files.length < 2){
			        	sel_files.push(f);
			            var reader = new FileReader();
			            reader.onload = function(e){
			            	//var html = `<a id=img_id_${index}><img src=${e.target.result} data-file=${f.name} /></a>`;			            	
			            	let imgsrc = e.target.result;
			            	let imgfile = f.name;
			            	$("#imgView").attr("src", imgsrc);
			            	$("#imgView").attr("data-file", imgfile);
			            	console.log($("#imgView").attr("src"));			            	
			                //$('#imagePreview').append(html);
			                index++;
			            };
			            reader.readAsDataURL(f);
			        }
			    })
			    if(files.length > 1){
			    	alert("1장만 업로드 할 수 있습니다.");
			    }
			}

			$('#real-input').on('change',readInputFile);
			
			</script>
	</body>
</html>