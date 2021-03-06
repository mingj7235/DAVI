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
		border-top: solid 2px rgba(210, 215, 217, 0.75);
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
	
	.team .image {
		color : #7f888f;
	}

</style>
</head>
<body>
	<footer id="footer">
		<div class="inner">
			<section class="info">
				<h3>About Us</h3>
					<div class="info_box">
						<div class="about">
							<p>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur malesuada.</p><p>Sagittis felis ac sagittis semper. Curabitur purus leo donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis.</p>
							<ul class="actions">
								<li><a href="#" class="button">Learn More</a></li>
							</ul>
						</div>
						<div class="team">
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic06.jpg" alt=""></span>
								<p>
									<strong class="name">John Doe</strong>
									<span class="title">Lorem semper magna etiam</span>
								</p>
							</article>
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic07.jpg" alt=""></span>
								<p>
									<strong class="name">Jane Anderson</strong>
									<span class="title">Etiam feugiat adipiscing veroeros</span>
								</p>
							</article>
							<article>
								<span class="image"><img src="${pageContext.request.contextPath}/images/pic08.jpg" alt=""></span>
								<p>
									<strong class="name">Mike Smith</strong>
									<span class="title">Consequat nulla dolor blandit</span>
								</p>
							</article>
						</div>
				</div>
			</section>
			<section class="contact">
				<h3>Contact Us</h3>
				<ul class="contact-icons">
					<li class="icon solid fa-home"><a href="#">1234 Somewhere Road #80486<br>Nashville, TN 00000</a></li>
					<li class="icon solid fa-phone"><a href="#">(800) 555-0000 x12345</a></li>
					<li class="icon solid fa-envelope"><a href="#">hello@untitled.tld</a></li>
					<li class="icon brands fa-facebook"><a href="#">facebook.com/untitled-tld</a></li>
					<li class="icon brands fa-twitter"><a href="#">twitter.com/untitled-tld</a></li>
				</ul>
			</section>
		</div>
		<div class="copyright">
			&copy; Untitled. All rights reserved.
		</div>
			</footer>
</body>
</html>