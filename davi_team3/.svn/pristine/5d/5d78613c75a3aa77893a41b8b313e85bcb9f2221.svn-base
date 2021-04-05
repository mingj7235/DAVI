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
		<title>식단관리</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />		
		<style>
			.headresize{
				width: 9%;
				display:flex;
				justify-content:center;
				align-items:center;			
			}			
			.resize{
				width: 15%;
				display:flex;
				justify-content:center;
					
			}
			
			.resize a{
				display:flex;
				flex-direction:column;
				justify-content:center;
				align-items:center;
				padding-top:2%;
			}
			
			.imgsize{
			width: 100%;
			object-fit: contain;
			}
			
			.columChartP{
			margin: 0 0 1em 0;
			}
			
			.content p{
				margin-bottom:1em !important;
			}
			
			.gtr-200{
				margin-bottom:3%;
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
								<section >
								
								<h2 align="center" style="margin-bottom:5%; font-size:2.5rem;">MrPPak님의 보고서</h2>
								<div style="width: 80%; margin: auto;">
									<div class="features" style="border: 1px solid rgba(0, 59, 251, 0.3); padding: 5% 2%;width: calc(100%);margin: 0 0 3em 0" >
										
										<article class="article">
											<span class="icon solid fa-paper-plane"></span>
											<div class="content">
												<h3>다비의 한마디</h3>
												<p class="report">다이어트 하기로 했으면</p>
												<p class="report">마음만 먹어야지</p>
												<p class="report">자꾸 이것 저것 먹으면 되겠니?</p>
											</div>
										</article>
										<article class="article">
											<span class="icon solid fa-rocket"></span>
											<div class="content">
												<h3>각오 & 목표</h3>
												<p class="report">각오 : <span>날 무시하던 전남친에게 제대로 복수하기!</span></p>
												<p class="report">목표 : <span>20kg 감량!!</span></p>
											</div>
										</article>									
																		
										
									</div>							
							      <!-- 라인 차트 생성할 영역 -->
								      <div style="border: 1px solid rgba(0, 59, 251, 0.3); padding: 5% 2%;">
									      <div class="row" style="margin-bottom:3%;">
									      	<div class="col-12">
									          <div id="chart_div"></div>
									      	</div>
									      </div>
								          <div class="row">
								          	<div class="col-9"> 
									          	<div id="chart_div2" style="padding-left: 4%"></div>						     
								          	</div>
								          	<div class="col-3"> 
								          		<p class="columChartP" style="padding:1em 0 0 0">18.5미만 : 저체중</p>
								          		<p class="columChartP">18.5이상~23미만: 정상</p>
								          		<p class="columChartP">23이상~25미만 과체중</p>
								          		<p class="columChartP">23이상~30미만 경도비반</p>
								          		<p class="columChartP">30이상 고도비만</p>
								          	</div>
								          </div>
								       </div>
							     </div>					          
							          				     
								</section>
								<!-- 식단 분리 -->
								<%-- <section >
									<h2 align="center" style="margin-bottom:5%; font-size:2.5rem;">이주의 식단</h2>
									<div style="width: 80%;margin: auto;">
										<div class="row gtr-200" style="margin-bottom:1%;" >												
											<div class="headresize">																						
											</div>
											<div class="resize">
												<h5>월요일</h5>
											</div>
											<div class="resize">
												<h5>화요일</h5>
											</div>
											<div class="resize">
												<h5>수요일</h5>
											</div>
											<div class="resize" >
												<h5>목요일</h5>
											</div>
											<div class="resize">
												<h5>금요일</h5>
											</div>
											<div class="resize">	
												<h5>토요일</h5>	
											</div>							
										</div>
										<div class="row gtr-200" >
											<div class="headresize">
												<span >아<br>침</span>													
											</div>	
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>							
										</div>
										<div class="row gtr-200" >
											<div class="headresize">
												<span >점<br>심</span>													
											</div>	
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>비서</span>												
												</a>
											</div>							
										</div>
										<div class="row gtr-200" >
											<div class="headresize">
												<span>저<br>녁</span>													
											</div>	
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>												
												</a>
											</div>
											<div class="resize">
												<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>											
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>											
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>												
												</a>
											</div>
											<div class="resize">
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>												
												</a>
											</div>
											<div class="resize">	
											<a href="#">
													<span><img src="${pageContext.request.contextPath}/images/menu1.jpg" class="imgsize"></span>	
													<span>햄버거</span>												
												</a>
											</div>							
										</div>
									</div>
								</section> --%>
								<div>
									<c:import url="/app/footer/footer_test.jsp" />
								</div>
						</div>
					</div>

				<!-- Sidebar -->
					<c:import url="/app/footer/footer.jsp" />

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="https://www.gstatic.com/charts/loader.js"></script>
			<script src="${pageContext.request.contextPath}/app/dietary/chart.js"></script>
	</body>
</html>