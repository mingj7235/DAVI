<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	 <c:set var="CheatBoardList" value="${CheatBoardList}"/>
     <c:set var="totalCnt" value="${totalCnt}"/>
     <c:set var="startPage" value="${startPage}"/>
     <c:set var="endPage" value="${endPage}"/>
     <c:set var="nowPage" value="${nowPage}"/>
     <c:set var="realEndPage" value="${realEndPage}"/>
     <c:set var="pageSize" value="${pageSize}"/>
     <fmt:parseNumber var="divNow" integerOnly="true" value="${(nowPage - 1)/pageSize}" />
	 <fmt:parseNumber var="divReal" integerOnly="true" value="${realEndPage/pageSize}" />

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
										<h2 align="center">치팅모임 게시판</h2>
																			
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
												<c:when test="${CheatBoardList != null and fn:length(CheatBoardList) > 0 }">
													<c:forEach var="cheatBoardVO" items="${CheatBoardList}">
														<tr>
															<td>${cheatBoardVO.getCheatHead()}</td>													
															<td id="title"><a href="${pageContext.request.contextPath}/board/cheatViewOk.bo?cheatNum=${cheatBoardVO.getCheatNum()}&page=${nowPage}" class="aboard">${cheatBoardVO.getCheatTitle()}</a></td>													
															<td>${cheatBoardVO.getMemberId()}</td>													
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
												<a href="${pageContext.request.contextPath}/app/board/cheatBoardWrite.jsp?page=${nowPage}" 
												style="cursor: pointer;" class="button small" >새 글쓰기</a>
											</div>
										</c:if>
										
										<div align="center" style="margin-top:4%;">
											<ul class="pagination">
											<c:choose>
												<c:when test="${nowPage > pageSize}">
												<fmt:parseNumber var="prevPage" integerOnly="true" value="${divNow*pageSize}" />
													<li><a href="${pageContext.request.contextPath}/board/cheatList.bo?page=${prevPage}&cheatHead=${param.cheatHead}&searchWord=${param.searchWord}&search=${param.search}" class="aboard">Prev</a></li>
												</c:when>
												<c:otherwise>
													<li><a class="aboard" style="cursor:pointer;">Prev</a></li>
												</c:otherwise>
											</c:choose>
													
												<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<c:choose>
														<c:when test="${i eq nowPage}">
															<li><a href="${pageContext.request.contextPath}/board/cheatList.bo?page=${i}&cheatHead=${param.cheatHead}&searchWord=${param.searchWord}&search=${param.search}" 
															class="page active">${i}</a></li>		
														</c:when>
														<c:otherwise>
															<li><a href="${pageContext.request.contextPath}/board/cheatList.bo?page=${i}&cheatHead=${param.cheatHead}&searchWord=${param.searchWord}&search=${param.search}" 
															class="page">${i}</a></li>	
														</c:otherwise>				
													</c:choose>
												</c:forEach>
											
											<c:choose>
												<c:when test="${divReal - divNow >= 1}">
												<fmt:parseNumber var="divPage" integerOnly="true" value="${(nowPage - 1)/pageSize}" />
												<fmt:parseNumber var="nextPage" integerOnly="true" value="${(divPage + 1) * pageSize + 1}" />
													<li><a href="${pageContext.request.contextPath}/board/cheatList.bo?page=${nextPage}&cheatHead=${param.cheatHead}&searchWord=${param.searchWord}&search=${param.search}" class="aboard">Next</a></li>
												</c:when>
												<c:otherwise>
													<li><a class="aboard" style="cursor:pointer;">Next</a></li>
												</c:otherwise>
											</c:choose>	
											</ul>
										</div>
										
										<div style="width:80%; margin: 0 auto;">
											<form method="get" action="${pageContext.request.contextPath}/board/cheatList.bo" name="searchListForm">										
												<div style="display:flex;">
													<select name="cheatHead" id="" style="margin-right:5px; width:35%">
														<option value="0">제목</option>
														<option value="1">닉네임</option>														
													</select>															
													<input type="text" name="search" placeholder="" style="margin-right:5px;width:60%" />
													<input type="hidden" name="searchWord" value="${param.searchWord}" />
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