<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>자유게시판뷰</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/app/board/css/board.css" />	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/app/board/summernote/summernote-lite.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" 
		integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
	</head>	
	<body class="is-preload">
	
	<!-- 컨트롤러에서 받아온 부분  -->
	<c:set var="bf_vo" value="${bf_vo}"/>
	<c:set var="lists" value="${lists}"/>
	
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<c:import url="/app/header/header.jsp" />

							<!-- Content -->										
								
								<section>																			
									<div class="mainFrame" style="width:50%; margin: 0 auto; font-size: 1em;margin-bottom: 2em;">
										<form method="post" action="${pageContext.request.contextPath}/board/freeModifyOk.bo?freeNum=${bf_vo.getFreeNum()}&page=${page}" name="freeBoardViewForm">
											<div class="viewHead" style="margin-bottom: 1em;display: flex;align-items: baseline;">

												
												<label for="freeHead" style="padding-right: 5px;color:#9fa3a6;" >분류:</label>
												<h3 id="freeHead" style="margin-right: 15px;">${bf_vo.getFreeHead()}</h3>
														<span class="smallTitle">작성자: ${bf_vo.getMemberId()}</span>													
														<span class="smallTitle">${bf_vo.getFreeDate()}</span>
											</div>
											<div class="viewTitle" style="margin-bottom: 1em; width: 80%;">
												<!-- <label for="subject">제목</label>	 -->											
												<!-- <input type="text" id="subject" name="freeTitle" placeholder="제목" value="제목1" readonly> -->
												<h4 id="subjectH3">${bf_vo.getFreeTitle()}</h4>
												<input type="text" id="subjectInput" name="freeTitle" placeholder="" value="${bf_vo.getFreeTitle()}" style="display: none;">
												
											</div>
											<div>
											
												<!-- 써머노트  폼 불러오기 -->
												<textarea id="summernote" name="freeContent" style="box-shadow: inherit; resize: none;" readonly="readonly";>${bf_vo.getFreeContent()}</textarea>
											</div>
											<div class="row" style="margin-top:5px;">
												<div class="col-4">
													<i class="far fa-gem fa-lg" style="cursor: pointer; color : #0072c3;padding-top: 10px" onclick="changeDiamond()"></i>
													<i class="" style="display: none;"></i>	
													
													<!-- 좋아요 갯수 표시 -->
													&nbsp;#											
												</div>																							
												<div class="col-8" style="margin: 10px 0px; text-align: right;">
												<span id="list">
													<a href="${pageContext.request.contextPath}/board/freeList.bo?page=${page}" style="margin-right: 10px;"><i class="fas fa-clipboard-list"></i></a>
												</span>
											<c:if test="${session_id eq bf_vo.getMemberId()}">
												<span id="modify">
													<a href="javascript:enable()" style="margin-right: 10px;"><i class="fas fa-pencil-alt"></i></a>								
												</span>
												<span id="deleteOk">
													<a href="${pageContext.request.contextPath}/board/freeDeleteOk.bo?freeNum=${bf_vo.getFreeNum()}" style="margin-right: 10px;"><i  class="fas fa-trash-alt"></i></a>													
												</span>
											</c:if>
												<span id="modifyOk" style="display: none">
													<a href="javascript:freeBoardViewForm.submit()" style="margin-right: 10px;"><i  class="fas fa-edit" ></i></a>
												</span>													
												</div>									
											</div>
											<c:set var="replyNumber" value="1" />
											<c:set var="replyLevel" value="0" />
											<c:set var="freeNum" value="0" />
										</form>
										<form name="replyForm" action="${pageContext.request.contextPath}/board/freeReplyWrite.bo">
											<article class="replyArti" style="margin-bottom: 10px; ">
												<h5 style="margin-top:20px">새댓글 작성</h5>	
												<div class="row" style="margin-top:5px">
													<div class="col-10 replyLevel0" >
														<textarea name="freeReplyContent" class="replycontent" placeholder="이곳에 입력하세요"></textarea>
													</div>
													<div class="col-2" style="margin:auto 0;padding-left: 10%;">
														<c:if test="${true}">
															<a href="javascript:replyForm.submit()"><i class="fas fa-edit"></i></a>
														</c:if>											
													</div>											
												</div>										
											</article>
											<input type="hidden" value="${session_id}" name="memberId"/>											
											<input type="hidden" value="${param.freeNum}" name="freeNum"/>
											<input type="hidden" value="${param.page}" name="page"/>
										</form>
											<div id="replyAjax">											
											<!-- 반복문으로 댓글 뿌리기 -->
											<c:forEach var="list" items="${lists}">
												<c:if test="${list.getParentReplyNum() == 0}">
													<c:set var="level" value="0"/>
												</c:if>
												<c:if test="${list.getParentReplyNum() != 0}">
													<c:set var="level" value="1"/>
												</c:if>
												<article class="replyArti">
												<form action="${pageContext.request.contextPath}/board/freeReplyUpdate.bo" name="updateForm" method="post">
													<div class="row">
														<div  class="col-10">
															<div id="reply" class="replyLevel-${level}">	
															<div>
																<span class="smallTitle">${list.getFreeReplyDate()}</span>	
																<span class="smallTitle">${list.getMemberId()}</span>	
															</div>														
																<textarea name="readReply${list.getFreeReplyNum()}" class="replycontent" readonly>
${list.getFreeReplyContent()}
																</textarea>
															</div>																						
														</div>											
														<div class="col-2" style=";margin:auto 0;padding-left: 10%;display: flex ;">														
															<c:if test="${session_id eq list.getMemberId()}">
															<a id="replyModify" href="javascript:replyModify(${list.getFreeReplyNum()})"><i class="fas fa-pencil-alt"></i></a>
															<a id="replyDelete" href="${pageContext.request.contextPath}/board/freeReplyDelete.bo?freeReplyNum=${list.getFreeReplyNum()}&page=${param.page}&freeNum=${param.freeNum}"><i class="fas fa-trash-alt"></i></a>
															<!-- <a id="replyModifyOk" href="javascript:updateForm.submit()" ><i class="fas fa-edit"></i></a> -->
															<input type="submit" value="수정완료">																													
															</c:if>
															<a id="replyWrite" href="javascript:replyAnswer(${list.getFreeReplyNum()}, ${level})" ><i class="fas fa-edit"></i></a>
														</div>	
															<input type="hidden" name="freeReplyNum" value="${list.getFreeReplyNum()}">											
															<input type="hidden" name="page" value="${param.page}">											
															<input type="hidden" name="freeNum" value="${param.freeNum}">											
													</div>
												</form>
												
													<form name="repeatForm" action="${pageContext.request.contextPath}/board/freeReplyWrite.bo">
														<article id="replyAnswer${list.getFreeReplyNum()}" class="replyArti" style="display: none;">
															<h5 id="reReplyLevelName${list.getFreeReplyNum()}" style="margin-top:20px;">댓글 작성</h5>	
															<div class="row" style="margin-top:5px">
																<div class="col-10">
																	<div id="reReplyLevelText${list.getFreeReplyNum()}">
																		<textarea id="writeReReply" name="freeReplyContent" class="replycontent" placeholder="이곳에 입력하세요"></textarea>
																	</div>
																</div>
																<div class="col-2" style="padding-left: 10%;">
																	
																		<%-- <a href="javascript:replyOk(${list.getFreeNum()}, ${list.getFreeReplyNum()}, ${level})"><i class="fas fa-edit"></i></a> --%>
																		<a href="javascript:repeatForm.submit()"><i class="fas fa-edit"></i></a>
																		<input type="submit" value="ok"/>
																											
																</div>											
															</div>										
														</article>
														<input type="hidden" value="${session_id}" name="memberId"/>											
														<input type="hidden" value="${param.freeNum}" name="freeNum"/>
														<input type="hidden" value="${param.page}" name="page"/>
														<input type="hidden" value="${list.getFreeReplyNum()}" name="freeReplyNum"/>
														
													</form>
												</article>
												
											</c:forEach>
											<!-- 여기까지 1번째댓글 -->	
											
									</div>					
								</section>
								<div>
									<c:import url="/app/footer/footer.jsp" />
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
			<!-- 써머노트를 사용하기위한 기본 js -->
			<script src="${pageContext.request.contextPath}/app/board/summernote/summernote-lite.js"></script>
			<script src="${pageContext.request.contextPath}/app/board/summernote/lang/summernote-ko-KR.js"></script>
			<!-- 써머노트 로딩과 설정변경 파일 js -->
			<script>var path = "${pageContext.request.contextPath}" </script>
			<script src="${pageContext.request.contextPath}/app/board/summernote/summernoteBasic.js"></script>		
			<script src="${pageContext.request.contextPath}/app/board/summernote/summernoteAdd.js"></script>
								
			<script src="${pageContext.request.contextPath}/app/board/js/replyBoard.js"></script>	
			
			<!-- textarea 자동 높이 조절 -->				
			<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>					
				
			<script>
			
			autosize($("textarea"));
			$(document).ready(function () {
			summernoteView();			
			writeDisable();			
			//insertContent('글내용~~~~~');
			
			});		
			
			function enable() {		
				$('#summernote').summernote('destroy');
				summernoteStart();
				$('select').val("1").prop("selected", true);				
				$('#subjectH3').hide();
				$('#deleteOk').hide();
				$('#modify').hide();
				$('#subjectInput').show();
				$('#modifyOk').show();				
				writeAble();
			}			
			
			function disable() {
				document.getElementById('subject').readOnly = true;				
				writeAble();
			}
			
			
			
			var diamondCheck = true;
			
			function changeDiamond() {
				if(!diamondCheck) {
					document.
					/* display를 none으로 변경하고 다른 icon을 가져와서(채워져있는 다이아몬드 ) */
					diamondCheck = true;
					
				}
					
			}
			
			
			</script>	
	</body>
</html>