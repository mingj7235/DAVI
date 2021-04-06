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
	border-top:0 !important;
	margin: 0;
	padding: 0;
	list-style: none;
	float: right;
}
#menufont li{
	margin: 0;
	padding: 0 6% 0 0;
	list-style: none;
	float: right;
	font-weight:bold;
	font-size:1.2rem;
}

#myMenu li{
	margin: 0;
	padding: 0 8px 0 0;
	list-style: none;
	float: right;
	font-weight:bold;
	font-size:1.2rem;
}


@media screen and (max-width: 1450px) {
		li{
			font-size:1rem;
		}		
}
@media screen and (max-width: 736px) {
		#menufont{
			display: none;			
		}
		
		
}

/* #main-menu>li {
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
	padding: 14px 36px;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
} */

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
	color: #7f888f;
	text-decoration: none;
}


/* #main-menu>li:hover #sub-menu {
	opacity: 1;
	visibility: visible;
} */

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
	<header id="header" border-bottom: solid 2px rgba(210, 215, 217, 0.75);">
		<div class="headerul" style="display:flex;align-items: flex-end; ">
					<a href="${pageContext.request.contextPath}/index.jsp" class="logo" style="padding-bottom: 
					0px; font-weight:bold; font-size:3rem; color: rgba(0, 59, 251, 1)">DAVI
					</a>
				
					<ul id="menufont" class="secret" style="width:70%;margin-left: 0">
						<li><a href="#">홈트레이닝</a></li>
						<li><a href="${pageContext.request.contextPath}/freeBoardList.bo?boardNum=1">자유게시판</a></li>	
								<li id="menuHover"><a href="#">치팅모임</a>
									<ul id="sub-menu" style="display: flex;flex-direction: column;">
										<li><a href="${pageContext.request.contextPath}/BoardList.bo?boardNum=0&chaetLocation=0" >서울/경기</a></li>
										<li><a href="${pageContext.request.contextPath}/BoardList.bo?boardMum=0&chaetLocation=1" >강원도</a></li>
										<li><a href="${pageContext.request.contextPath}/BoardList.bo?boardNum=0&chaetLocation=2" >충청도</a></li>
										<li><a href="${pageContext.request.contextPath}/BoardList.bo?boardNum=0&chaetLocation=3" >경상도</a></li>
										<li><a href="${pageContext.request.contextPath}/BoardList.bo?boardNum=0&chaetLocation=4" >전라도/기타</a></li>
									</ul>
								</li>
						<li><a href="#">식단인증샷</a></li>
						<li><a href="#" >식단</a></li>
						<li><a href="#" >보고서</a></li>
						<li><a href="#">메인</a></li>						
					</ul>				
				
					<!-- 세션의 아이디로그인 정보를 이용하여 if문의 조건 검색 -->
					<span style="margin-left: auto;">
						<c:if test="${empty sessionScope.memberId}">						
							(#)님 환영합니다.&nbsp;
							<a href="#">로그아웃</a>&nbsp;
						</c:if>
						<c:if test="${not empty sessionScope.memberId}">					
							<a href="#">회원가입</a>
							<a href="#">로그인</a>&nbsp;						
						</c:if>
					</span>
				
			
			
		</div>		
	</header>

</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script>
		
</script>
</html>