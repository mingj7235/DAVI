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
		<title>마이 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Cute+Font&display=swap" rel="stylesheet">
		<style>
			 body{
				font-family: 'Sunflower', sans-serif;
			} 
			
			.title_mypage{
				font-size: 3rem;
				margin-bottom: 3%;
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
					

							<!-- Content -->
								<section style="padding-top:3%;">
										<div style="display: flex; justify-content: center;">
											<p class="title_mypage">마이 페이지 </p>
										</div>
										<div style="text-align: center;">
											<hr style="width: 30%; margin: 1% auto;">
											<div>
												<a href ="${pageContext.request.contextPath}/member/myPageUpdate.me" class="button" style="width:30%; margin:1% auto; font-size: 1em;" >내 정보 수정</a>
											</div>
											<div>
												<a href ="${pageContext.request.contextPath}/member/myPageChangePw.me" class="button" style="width:30%; margin:1% auto; font-size: 1em;" >비밀번호 변경</a>
											</div>
											<div>
												<a href ="${pageContext.request.contextPath}/member/memberPayListOk.me" class="button" style="width:30%; margin:1% auto; font-size: 1em;" >결제 내역 조회</a>
											</div>
											<hr style="width: 30%; margin: 1% auto;">
											
										</div>
								</section>								

							<c:import url="/app/footer/footer.jsp" />
						</div>
					</div>

				<!-- Sidebar -->
			<c:import url="/app/footer/sidebar.jsp" />		
			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script>
			function popupUpdate() {
				var width = '700';
			    var height = '800';
			    var left = Math.ceil(( window.screen.width - width )/2);
			    var top = Math.ceil(( window.screen.height - height )/2); 
			    window.open('${pageContext.request.contextPath}/app/member/mypage_updateStatus.jsp', '게시물 작성', 'width='+ width +', height='+ height +', left=' + left + ', top='+ top );
			}
			
			function changePw() {
				changePwForm.submit();
			}
			
			var check = '${param.check}';
			var result = '${param.result}';
			
			if(check == "true") {
				alert ('비밀번호 변경 완료');
			} else if (check == "false") {
				alert ('비밀번호 변경 실패') 
			} else if (check == "fail") {
				alert ('기존 비밀번호를 다시 확인해주세요')
			}
			
			if(result == "true"){
				alert ('내정보 수정 완료');
			}else if(result == "false"){
				alert ('내정보 수정 실패');
			}
		
			
			
			</script>

	</body>
</html>