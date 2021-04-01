<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<title>header</title>
<style>
.headerul ul{
	margin: 0;
	padding: 0;
	list-style: none;
	float: right;
}
.headerul li{
	margin: 0;
	padding: 0 8px 0 0;
	list-style: none;
	float: right;
}


#main-menu>li {
	float: left;
	position: relative;
}

#main-menu>li>a {
	font-size: 1rem;
	color: #ffaec9;
	text-align: center;
	text-decoration: none;
	letter-spacing: 0.05em;
	display: block;
	/* padding: 14px 36px; */
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
}

#sub-menu {
	position: absolute;
	background: #ffffff9e;
	opacity: 0;
	visibility: hidden;
	transition: all 0.15s ease-in;
}


#sub-menu>li {
	padding: 5px 0;
	border-bottom: 1px solid rgba(0, 0, 0, 0.15);
	margin-top: 5px;
}


#sub-menu>li>a {
	color: black;
	text-decoration: none;
}


#main-menu>li:hover #sub-menu {
	opacity: 1;
	visibility: visible;
}

#sub-menu>li>a:hover {
	text-decoration: underline;
}

#menuHover:hover #sub-menu{
	opacity: 1;
	visibility: visible;
}

#menufont a{
	color: black;
}

</style>
</head>
<body>
	<!-- Header -->
	<header id="header" style="display: block;">
		<div class="row">
			<div class="col-4">
				<a href="${pageContext.request.contextPath}/index.jsp" class="logo" style="padding-bottom: 0px;">
					<img src="${pageContext.request.contextPath}/images/logo_blue.png" 
					width="52" height="42" />
				</a>
			</div>
			<div class="col-8 headerul" style="display: flex; justify-content: flex-end;">
				<ul class="myMenu" style="margin-right: 3%;">
					<!-- 세션의 아이디로그인 정보를 이용하여 if문의 조건 검색 -->
					<c:if test="${empty sessionScope.memberId}">						
						<ul id="main-menu" style="width: 22%; margin-top: 3%;">
							<li><a href=" "><img src="${pageContext.request.contextPath}/images/myPage.png" style="width:100%;"></a>
								<ul id="sub-menu">
									<li><a href="#" style="text-decoration: none;" aria-label="subemnu">&nbsp;&nbsp;&nbsp;&nbsp;정보
											수정&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
									<li><a href="#" style="text-decoration: none;" aria-label="subemnu">비밀번호 변경</a></li>
									<li><a href="#" style="text-decoration: none;" aria-label="subemnu">나의 식단관리 </a></li>
								</ul>
							</li>
						</ul>						
						<li style="margin-top: 5%;"><a href="#">로그아웃</a>&nbsp;</li>
						<li style="margin-top: 5%;">(#)님 환영합니다.&nbsp;</li>
					</c:if>
					<c:if test="${not empty sessionScope.memberId}">					
						<li style="margin-top: 5%;"><a href="#">회원가입</a></li>
						<li style="margin-top: 5%;"><a href="#">로그인</a>&nbsp;</li>						
					</c:if>
				</ul>
			</div>
		</div>		
		<div class="row">
			<div class="col-12 headerul" >
				<div style="padding-left:1.5em;">
				<ul id="menufont" style="border-top: dashed 1px #0072c3;">
					<li><a href="#">홈트레이닝</a></li>
					<li><a href="#">자유게시판</a></li>	
							<li id="menuHover"><a href="#">치팅모임</a>
								<ul id="sub-menu" style="display: flex;flex-direction: column;">
									<li><a href="#" >서울/경기</a></li>
									<li><a href="#" >강원도</a></li>
									<li><a href="#" >충청도</a></li>
									<li><a href="#" >경상도</a></li>
								</ul>
							</li>
					<li><a href="#">식단인증샷</a></li>
					<li><a href="#">개인식단관리</a></li>
					<li><a href="#">메인</a></li>
				</ul>
				</div>
			</div>
		</div>	
	</header>

</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script>
		
</script>
</html>