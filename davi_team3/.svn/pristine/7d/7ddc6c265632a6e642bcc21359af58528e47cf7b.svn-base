<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
<style>
	#wrap{
		/* width:60%; */
		display:flex;
		justify-content:space-between;
		height:500px;
	}
	
	#img{
		width:60%;
	}
	
	#img img {
		width:100%;
		height:100%;
	}	
	
	#detail{
		display:flex;
		flex-direction:column;
		align-items:center;
		width:39.7%;
	}
	
	#memberId, #title{
		display:flex;
		flex-wrap:wrap;
		align-items:center;
		width:100%;
		height:50px;
		border:2px solid rgba(210, 215, 217, 0.75);
		border-top:0;
		box-sizing : border-box;
		padding:0 4%;
		font-weight:bold;
	}
	
	#memberId{
		border-top: 2px solid rgba(210, 215, 217, 0.9);
		justify-content:space-between;
	}
	
	#content{
		padding:4% 4%;
		display:flex;
		word-break:break-all;
		flex-wrap:wrap;
		box-sizing : border-box;
		width:100%;
		height:400px;
		border:2px solid rgba(210, 215, 217, 0.9);
		border-top:0;
		font-weight:bold;
	}
	
	.memberId {
		font-weight:bold;
	}
</style>
</head>
<body>
<c:set var="num" value="${param.num}"></c:set>
	<div id="wrap">
	
		<div id="img">
			<img alt="" src="${path}">
		</div>	
		
		<div id="detail">
			<div id="memberId" style="padding:0 4%;">
				<!-- <i class="fas fa-medal"></i> --> <!-- 메달아이콘 -->
				<c:choose>
					<c:when test="${num == '1'}">
						<div style="display:flex; align-items:center; width:30%;">
							<div style="border:2px solid gold; border-radius:50%; padding:3%;">
								<i class="fas fa-trophy" style="color:gold"></i>
							</div>
							<div class="memberId">&nbsp;${id}</div>
						</div>
						<div style="border:2px solid gold; padding:1.2%; color:gold;">No.1</div>
					</c:when>
					<c:when test="${num == '2' }">
						<div style="display:flex; align-items:center; width:30%;">
							<div style="border:2px solid #878787; border-radius:50%; padding:3%;">
								<i class="fas fa-trophy" style="color:#878787"></i>
							</div>
							<div class="memberId">&nbsp;${id}</div>
						</div>
						<div style="border:2px solid #878787; padding:1.2%; color: #878787;">No.2</div>					
					</c:when>
					<c:when test="${num == '3'}">
						<div style="display:flex; align-items:center; width:30%;">
							<div style="border:2px solid #964b00; border-radius:50%; padding:3%;">
								<i class="fas fa-trophy" style="color:#964b00"></i>
							</div>
							<div class="memberId">&nbsp;${id}</div>
						</div>
						<div style="border:2px solid #964b00; padding:1.2%; color: #964b00;">No.3</div>					
					</c:when>
					<c:otherwise>
						<div style="display:flex; align-items:center; width:30%;">
							<div style="border:2px solid #008080; border-radius:50%; padding:3%;">
								<i class="fas fa-medal" style="color:#008080"></i>
							</div>
							<div class="memberId">&nbsp;${id}</div>
						</div>
						<div style="border:2px solid #008080; padding:1.2%; color:#008080;">No.${num}</div>					
					</c:otherwise>
				</c:choose>
				
			</div>
			<div id="title">${title}</div>
			<div id="content">${content}</div>
		</div>	
		
	</div>
</body>
</html>