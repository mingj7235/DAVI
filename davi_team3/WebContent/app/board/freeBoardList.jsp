<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE HTML>
<html>
	<head>
		<title>기본 프레임</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/app/board/css/board.css" />		
		<style>
			@media screen and (max-width: 620px) {
				#boardList .th1 {
					width: 20%;
				}
				#boardList .th2 {
					width: 60%;
				}
				#boardList .th3 {
					width: 20%;
				}
				#boardList {
					width: 100%;
				}
			}
		</style>	
	</head>
	<body class="is-preload">
	 <c:set var="freeBoardList" value="${freeBoardList}"/>
     <c:set var="totalCnt" value="${totalCnt}"/>
     <c:set var="startPage" value="${startPage}"/>
     <c:set var="endPage" value="${endPage}"/>
     <c:set var="nowPage" value="${nowPage}"/>
     <c:set var="realEndPage" value="${realEndPage}"/>
	
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<c:import url="/app/header/header.jsp" />
					

							<!-- Content -->
								<section>
								
								<div  class="mainFrame" style="width: 65%;margin: 0 auto;">								
									<c:if test="${param.boardNum eq 0}">
										<h2 align="center">치팅모임 게시판</h2>
									</c:if>
									<c:if test="${param.boardNum eq 1}">
										<h2 align="center">자유 게시판</h2>										
									</c:if>
																			
									<div class="table-wrapper mainFrame">
										<table id="boardList">
											<thead>
												<tr>
													<th class="th1" width="15%">분류</th>
													<th class="th2" width="70%">제목</th>
													<th class="th3 secret" width="15%">닉네임</th>
												</tr>
											</thead>
											<tbody>
											<c:choose>
												<c:when test="${freeBoardList != null and fn:length(freeBoardList) > 0 }">
													<c:forEach var="freeBoardVO" items="${freeBoardList}">
														<tr>
															<td>${freeBoardVO.getFreeHead()}</td>													
															<td id="title"><a href="${pageContext.request.contextPath}/board/freeViewOk.bo?freeNum=${freeBoardVO.getFreeNum()}" class="aboard">아무데나 클릭하면 메인으로</a></td>													
															<td>${freeBoardVO.getFreeHead()}</td>													
														</tr>														
													</c:forEach>
												</c:when>
												<c:otherwise>
													<tr>
														<td class="aboard" colspan="3">등록된 게시물이 없습니다.</td>
													</tr>
												</c:otherwise>
											</c:choose>
												<%-- <tr>
													<td>강원/경기</td>													
													<td id="title"><a href="${pageContext.request.contextPath}/index.jsp" class="aboard">아무데나 클릭하면 메인으로</a></td>													
													<td>우리라</td>													
												</tr>
												<tr>
													<td>서울</td>													
													<td id="title"><a href="#" class="aboard">두번째 제목</a></td>													
													<td>홍길동</td>													
												</tr> --%>
											</tbody>																								
										</table>
										
										<c:if test="${not empty sessionScope.session_id}">	
											<div style="text-align: right; margin-top:4%;">
												<a href="${pageContext.request.contextPath}/app/board/freeBoardWrite.jsp?page=${nowPage}" 
												style="cursor: pointer;" class="button small" >새 글쓰기</a>
											</div>
										</c:if>
										
										<div align="center">
											<ul class="pagination">
											<c:choose>
												<c:when test="${nowPage > 5}">
													<li><a href="${pageContext.request.contextPath}/board/freeList.bo?page=${nowPage - 1}" class="aboard">Prev</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="#" class="aboard">Prev</a></li>
												</c:otherwise>
											</c:choose>
													
												<c:forEach var="i" begin="0" end="">
													<li onclick="clicked()"><a href="#" class="page" id="inners${i}">${i+1}</a></li>											
												</c:forEach>
											
											<c:choose>
												<c:when test="">
													<li><a href="#" class="aboard">Next</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="#" class="aboard">Next</a></li>
												</c:otherwise>
											</c:choose>	
											</ul>
										</div>
										
										<div style="width:80%; margin: 0 auto;">
											<form method="get" action="#" name="searchListForm">										
												<div style="display:flex;">
													<select name="searchFreeHead" id="" style="margin-right:5px; width:35%">
														<option value="0">분류</option>
														<option value="1">제목</option>
														<option value="2">닉네임</option>														
													</select>															
													<input type="text" name="searchFreeWord" placeholder="" style="margin-right:5px;width:60%" />
													<input type="submit" value="검색" class="primary" />													
												</div>											
											</form>
										</div>
									</div>
								</div>

								</section>
								
							<div>
							<!-- Footer -->
								<c:import url="/app/footer/footer.jsp"/>
							</div>
							
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
				function clicked(index, len) {
					for(let i=0;i<len;i++){
						if(i == index){					
							document.getElementById("inners" + i).className = "page active";
						}else{
							document.getElementById("inners" + i).className = "page";
						}
					}					
				}
				
				$('table tbody tr').on('click', function() {
				    location.href = $(this).children('#title').children('a').attr('href');
				    return false;
				});
				const x = window.matchMedia("(max-width: 620px)");
				if(x.matches){
					console.log("컬럼삭제");
					deleteColumn();
				}
				
				
				function deleteColumn() {
					  const table = document.getElementById('boardList');
					  
					  for(let i = 0; i < table.rows.length; i++)  {
					    table.rows[i].deleteCell(-1);
					  }
				}
			</script>

	</body>
</html>