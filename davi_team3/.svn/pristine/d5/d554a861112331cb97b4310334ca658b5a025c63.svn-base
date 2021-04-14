<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE HTML>
<!--
	Editorial by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>bestBoard</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<style>
a.image {
	 position: relative; 
	 width: 100%;
	 height: 0; 
	 padding-bottom: 100%;
}

span.ranking {
	color: black; 
	font-size: 1.6rem; 
	font-weight: bold;
}
#dia {
	color: #ffaec9; 
	font-size: 0.95rem; 
	padding-bottom: 5px;
}

body {
	font-family: 'Sunflower', sans-serif;
}

.title {
	font-size: 3rem;
	font-family: 'Cute Font', cursive;
	color: #ffaec9;
	margin-bottom: 3%;
}

h1, h2, h3, h4 {
	font-family: 'Sunflower', sans-serif;
}

.report {
	margin-bottom: 10px;
	color: #ffaec9;
	font-weight: bold;
}

.report span {
	color: black;
	margin-left: 5px;
	font-weight: 100;
}

.graph {
	width: 80%;
}

.graph__description {
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}

.graph__bar {
	height: 3px;
	background-color: #D3D3D3;
	margin-bottom: 15px;
}

.graph__value {
	width: 100%;
	height: 3px;
	background-color: #ffaec9;
}

.best_posts{
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

#cover{
	display: flex;
    justify-content: center;
    align-items:center;
    position: absolute;
    background-color: #000000;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    opacity: 0;
    /* transform: translateY(20px);
    transition: all var(--animation-duration) ease-in; */
}

#cover:hover {opacity:0.5;}

a.image:hover img {
	-moz-transform: scale(1) !important;
	-webkit-transform: scale(1) !important;
	-ms-transform: scale(1) !important;
	transform: scale(1) !important;
}

</style>
</head>
<body class="is-preload">
<c:set var="listsVO" value="${listsVO}"></c:set>
<c:set var="likeCntList" value="${likeCntList}"></c:set>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<c:import url="/app/header/header.jsp" />

				<!-- Section -->
				<div style="display: flex; flex-direction: column; align-items: center; padding:5em 0 2em 0;">
					<img style="width:80%; height:auto;" src="https://cdn.discordapp.com/attachments/829186101029502990/829186131043287060/28e4f757ba966512.png">
				</div>
				<section style="padding-top: 30px; width: 80%; margin: auto;">

					<div id="best_posts" class="best_posts">
						<c:forEach var="i" begin="0" end="${fn:length(listsVO) - 1}">
								<div style="width:30%; margin-bottom:5%; ">
									<a href="" class="image" style="border:1px solid rgba(210, 215, 217, 0.75); ">
									<img
										src="${listsVO[i].getCertificatedPath()}"
										alt=""
										style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" />
									<div id="cover" style="color:white;">
										<i class="fas fa-gem fa-lg"></i> &nbsp; ${likeCntList[i]}개
									</div>
									</a>
								</div>
						</c:forEach>
						
						<!-- <article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205998991310928/1.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article> -->
						
						<!-- <article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829206000216834068/2.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205998291779664/10.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205996382978058/9.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205994612850698/8.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205993388638248/7.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205992557772810/6.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205991207862282/5.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205990284066847/4.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205989042946078/3.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205989042946078/3.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article>
						
						<article>
							<div>
								<a href="#" class="image">
								<img
									src="https://cdn.discordapp.com/attachments/829186101029502990/829205989042946078/3.png"
									alt=""
									style="display: inline-block; width: 100%; height: 100%; position: absolute; top: 0; left: 0;" /></a>
							</div>
						</article> -->
					
					</div>
				</section>
			<div>
				<c:import url="/app/footer/footer.jsp"/>
			</div>
			</div>
		</div>

		<!-- Sidebar -->
		<c:import url="/app/footer/sidebar.jsp" />
	</div>

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	

</body>
</html>