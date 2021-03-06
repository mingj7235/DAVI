<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
	footer {
		display: block;
		margin: 0;
		padding: 0 4em 0.1em 4em;
		border: 0;
		font-size: 100%;
		font: inherit;
		vertical-align: baseline;
	}
	#footer > .inner {
		display: flex;
		margin: 0 auto;
		max-width: 110em;
		padding : 4% 10% 4% 6%;
		
	}
	
	#footer .info {
		display : flex;
		flex : 1;
		flex-wrap: wrap;
		margin: 0 10px;
		padding : 0 10px;	
	}
	
	section {
		display: block;
	}
	
	#footer .info .team .image img {
		border-radius: 100%;
	}
	
	.image img {
		display: block;
		width : 80px;
		height: 80px;
	}
	
	#footer .info .team .image {
		border-radius: 100%;
		margin-bottom: 2em;
		margin-right: 1.5em;
	}
	
	.info_box {
		display: flex;
		justify-content: center;
		
	}
	
	#footer .info .team article {
		display: flex;
		align-items: center;
	}
	
	#footer .info .about {
		width : 50%;
	}
	
	p {
		margin : 0 0 2em 0;
	}
	
	@media screen and (max-width: 1280px) {
		#footer .info .team {
    		padding-left: 2.25em;
		}
	}
	
	#footer .info .team {
		width: 50%;
		padding-left: 2.7em
	}
	
	#footer .contact {
	    padding: 0 0 2.5em 3.25em;
	    -moz-flex-shrink: 0;
	    -webkit-flex-shrink: 0;
	    -ms-flex-shrink: 0;
	    flex-shrink: 0;
	    border-left: solid 1px rgba(144, 144, 144, 0.25);
	    width: 33.33333%;
	}
	
	ul.contact-icons li {
	    min-height: 2.4em;
	    margin-bottom: 1.5em;
	}
	
	.icon {
	    text-decoration: none;
	    border-bottom: none;
	    position: relative;
	}
	
	ul {
		list-style: none;
		padding-left: 0;
	}
	
	li {
		padding-left: 0;
	}
	
	ul li {
		padding-left: 0;
	}
	
	ul.contact-icons li {
	    min-height: 2.4em;
	    padding-left: 3.5em;
	    margin-bottom: 1.5em;
	    color : #0072C3;
	}
	
	ul.contact-icons li:before {
	    border-radius: 100%;
	    border: solid 1px;
	    font-size: 1em;
	    height: 2.4em;
	    left: 0;
	    line-height: 2.4em;
	    position: absolute;
	    text-align: center;
	    top: -0.25em;
	    width: 2.4em;
	}
	
	ul.contact-icons li a {
	    
	}
	
	.copyright {
		text-align: center;
		margin-bottom: 10px;
	}
	
	.makerProfile{
		color : #7f888f;
	}
	
	.makerInfo {
		color : #7f888f;
		font-size: 0.8em;
	}
	

</style>
</head>
<body>
	<footer id="footer"  >
		<div class="inner" >
			<section class="info" style="border-top:none;">
				<h3>About Us</h3>
					<div class="info_box" >
						<div class="about" style="color : #7f888f;">
							<p>DAVI??? Diet is Awesome and Very Important??? ??????????????????.</p>
							<p>??????????????? ??? ??? ?????? ?????????, ????????? ????????? ??? ??? ??????????????? ???,</p>
							<p>????????? ???????????? ???????????? ????????? ???,</p>
							<p>?????? ????????? ???????????? ?????? ????????? ???,</p>
							<p>?????? ?????? ???????????? ?????? ??? ????????? ??????????????? ?????? ?????? ????????? ???  </p>
							<p>?????? DAVI??? ?????? ????????? ??????????????? ! </p>
						</div>
						<div class="team">
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/app/footer/img/pjh.jpeg" alt=""></span>
								<p class="makerProfile">
									<strong class="name">?????????</strong><br>
									<span class="title">The Avengers ?????? ????????????</span>
								</p>
							</article>
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/app/footer/img/kko.png" alt=""></span>
								<p class="makerProfile" > 
									<strong class="name">?????????</strong><br>
									<span class="title">The Avengers ????????????</span>
								</p>
							</article>
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/app/footer/img/kmj.jpeg" alt=""></span>
								<p class="makerProfile">
									<strong class="name">?????????</strong><br>
									<span class="title">The Avengers ???????????????</span>
								</p>
							</article>
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/app/footer/img/ksy.png" alt=""></span>
								<p class="makerProfile">
									<strong class="name">?????????</strong><br>
									<span class="title">The Avengers ?????????</span>
								</p>
							</article>
						</div>
				</div>
			</section>
			<section class="contact" style="border-top:none;">
				<h3>Contact Us</h3>
				<ul class="contact-icons">
					<li class="icon solid fa-home"><a href="#" class="makerInfo">??????????????? ????????? ???????????? 146 <br>???????????? 3???,4???</a></li>
					<li class="icon solid fa-phone"><a href="#" class="makerInfo">(02)1588-5890 </a></li>
					<li class="icon solid fa-envelope"><a href="#" class="makerInfo">programmerjong@gmail.com</a></li>
					<li class="icon brands fa-facebook"><a href="#" class="makerInfo">facebook.com/koreaIt</a></li>
					<li class="icon brands fa-twitter"><a href="#"class="makerInfo" >twitter.com/koreaIt</a></li>
				</ul>
			</section>
		</div>
		<div class="copyright">
			&copy; Untitled. All rights reserved.
		</div>
			</footer>
</body>
</html>