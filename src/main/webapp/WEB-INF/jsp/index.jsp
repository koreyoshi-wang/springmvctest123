<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>MeiMei</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<link rel="stylesheet" type="text/css" href="${contextPath}/css/windy.css" />
		<link rel="stylesheet" type="text/css" href="${contextPath}/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="${contextPath}/css/style2.css" />
		<script type="text/javascript" src="${contextPath}/js/modernizr.custom.79639.js"></script>
    </head>
    <body>
    	<!-- <audio autoplay="autoplay" loop="loop" controls="controls" style="width:100%"> -->
    	<audio autoplay="autoplay" loop="loop" style="width:100%">
    		<source src="${contextPath}/music/until_you.mp3" type="audio/mpeg" />
    		<source src="${contextPath}/music/until_you.mp3" type="audio/ogg">
    		Until You
    	</audio>
        <div class="container">
			
			<header class="">
				<h2><strong>世界那么大，我们一起去旅行。</strong></h2>	
			</header>
			<section class="main">
				<div class="windy-demo windy-demo-2">
					<ul id="wi-el" class="wi-container">
					<li><img src="${contextPath}/images/29.JPG" alt="image6"/><h4>Fairness</h4></li>
						<li><img src="${contextPath}/images/1.JPG" alt="image1"/><h4>Attractive</h4></li>
						<li><img src="${contextPath}/images/2.JPG" alt="image2"/><h4>Lovely</h4></li>
						<li><img src="${contextPath}/images/3.JPG" alt="image3"/><h4>Pretty</h4></li>
						<li><img src="${contextPath}/images/4.JPG" alt="image4"/><h4>Charming</h4></li>
						<li><img src="${contextPath}/images/5.JPG" alt="image5"/><h4>Cute</h4></li>
						<li><img src="${contextPath}/images/6.JPG" alt="image6"/><h4>Fairness</h4></li>
						<li><img src="${contextPath}/images/7.JPG" alt="image7"/><h4>Pulchritude</h4></li>
						<li><img src="${contextPath}/images/8.JPG" alt="image8"/><h4>Gorgeous</h4></li>
						<li><img src="${contextPath}/images/9.JPG" alt="image9"/><h4>Sightly</h4></li>
						<li><img src="${contextPath}/images/10.JPG" alt="image10"/><h4>Stunning</h4></li>
						<li><img src="${contextPath}/images/11.JPG" alt="image11"/><h4>Alluring</h4></li>
						<li><img src="${contextPath}/images/12.JPG" alt="image12"/><h4>Enchanting</h4></li>
						<li><img src="${contextPath}/images/13.JPG" alt="image13"/><h4>Saucy</h4></li>
						<li><img src="${contextPath}/images/14.JPG" alt="image14"/><h4>Sightly</h4></li>
						<li><img src="${contextPath}/images/15.JPG" alt="image15"/><h4>Attractive</h4></li>
						<li><img src="${contextPath}/images/16.JPG" alt="image16"/><h4>Alluring</h4></li>
						<li><img src="${contextPath}/images/17.JPG" alt="image17"/><h4>Gorgeous</h4></li>
						<li><img src="${contextPath}/images/18.JPG" alt="image18"/><h4>Gorgeous</h4></li>
						<li><img src="${contextPath}/images/19.JPG" alt="image19"/><h4>Sightly</h4></li>
						<li><img src="${contextPath}/images/20.JPG" alt="image20"/><h4>Stunning</h4></li>
						<li><img src="${contextPath}/images/21.JPG" alt="image21"/><h4>Alluring</h4></li>
						<li><img src="${contextPath}/images/22.JPG" alt="image22"/><h4>Enchanting</h4></li>
						<li><img src="${contextPath}/images/23.JPG" alt="image23"/><h4>Saucy</h4></li>
						<li><img src="${contextPath}/images/24.JPG" alt="image24"/><h4>Sightly</h4></li>
						<li><img src="${contextPath}/images/25.JPG" alt="image25"/><h4>Attractive</h4></li>
						<li><img src="${contextPath}/images/26.JPG" alt="image26"/><h4>Alluring</h4></li>
						<li><img src="${contextPath}/images/27.JPG" alt="image27"/><h4>Gorgeous</h4></li>
						<li><img src="${contextPath}/images/28.JPG" alt="image28"/><h4>Gorgeous</h4></li>
					</ul>
					<nav>
						<span id="nav-prev">prev</span>
						<span id="nav-next">next</span>
					</nav>
				</div>
			</section>
			
        </div>
        <script type="text/javascript" src="${contextPath}/js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="${contextPath}/js/modernizr.custom.79639.js"></script>
        <script type="text/javascript" src="${contextPath}/js/jquery.windy.js"></script>
        <script type="text/javascript">	
			$(function() {

				var $el = $( '#wi-el' ),
					windy = $el.windy( {
						// rotation and translation boundaries for the items transitions
						boundaries : {
							rotateX : { min : 40 , max : 90 },
							rotateY : { min : -15 , max : 45 },
							rotateZ : { min : -10 , max : 10 },
							translateX : { min : -400 , max : 400 },
							translateY : { min : -400 , max : 400 },
							translateZ : { min : 350 , max : 550 }
						}
					} ),
					allownavnext = false,
					allownavprev = false;

				$( '#nav-prev' ).on( 'mousedown', function( event ) {

					allownavprev = true;
					navprev();
					if (windy.current == 0) {
						$("h2").html("<strong>"+"世界那么大，我们一起去旅行。"+"</strong>");
					} else if (windy.current == 1) {
						$("h2").html("<strong>"+"我想宠着你"+"</strong>");
					} else if (windy.current == 2) {
						$("h2").html("<strong>"+"我想惯着你"+"</strong>");
					} else if (windy.current == 3) {
						$("h2").html("<strong>"+"我想和你一起做饭"+"</strong>");
					} else if (windy.current == 4) {
						$("h2").html("<strong>"+"我想和你一起躺沙发上看电视"+"</strong>");
					} else if (windy.current == 5) {
						$("h2").html("<strong>"+"我想和你一起去远方旅行"+"</strong>");
					} else if (windy.current == 6) {
						$("h2").html("<strong>"+"我想和你一起做很很多的事"+"</strong>");
					} else if (windy.current == 10) {
						$("h2").html("<strong>"+"我希望我的生命中有你"+"</strong>");
					} else  if (windy.current == 11) {
						$("h2").html("<strong>"+"共享快乐悲伤"+"</strong>");
					} else if (windy.current == 17) {
						$("h2").html("<strong>"+"我希望我的生命中有你"+"</strong>");
					} else  if (windy.current == 18) {
						$("h2").html("<strong>"+"共享快乐悲伤"+"</strong>");
					} else if (windy.current == 20) {
						$("h2").html("<strong>"+"我想和你一起虚度时光"+"</strong>");
					} else if (windy.current == windy.itemsCount-12) {
						$("h2").html("<strong>"+"我希望和你一起贯彻未来"+"</strong>");
					} else if (windy.current == windy.itemsCount-11) {
						$("h2").html("<strong>"+"数遍生命的公路牌"+"</strong>");
					} else if (windy.current == windy.itemsCount-2) {
						$("h2").html("<strong>"+"和你一起，相拥而坐都觉得自己是最幸福的人"+"</strong>");
					} else if (windy.current == windy.itemsCount-1) {
						$("h2").html("<strong>"+"前面的路还很长，我们牵手而行。"+"</strong>");
					} else {
						$("h2").html("<strong>"+"没见面都这么喜欢的人，怎么甘愿之做朋友。"+"</strong>");
					}
				
				} ).on( 'mouseup mouseleave', function( event ) {
					allownavprev = false;
				
				} );

				$( '#nav-next' ).on( 'mousedown', function( event ) {

					allownavnext = true;
					navnext();
					if (windy.current == 0) {
						$("h2").html("<strong>"+"世界那么大，我们一起去旅行。"+"</strong>");
					} else if (windy.current == 1) {
						$("h2").html("<strong>"+"我想宠着你"+"</strong>");
					} else if (windy.current == 2) {
						$("h2").html("<strong>"+"我想惯着你"+"</strong>");
					} else if (windy.current == 3) {
						$("h2").html("<strong>"+"我想和你一起做饭"+"</strong>");
					} else if (windy.current == 4) {
						$("h2").html("<strong>"+"我想和你一起躺沙发上看电视"+"</strong>");
					} else if (windy.current == 5) {
						$("h2").html("<strong>"+"我想和你一起去远方旅行"+"</strong>");
					} else if (windy.current == 6) {
						$("h2").html("<strong>"+"我想和你一起做很很多的事"+"</strong>");
					} else if (windy.current == 10) {
						$("h2").html("<strong>"+"我希望我的生命中有你"+"</strong>");
					} else  if (windy.current == 11) {
						$("h2").html("<strong>"+"共享快乐悲伤"+"</strong>");
					} else if (windy.current == 17) {
						$("h2").html("<strong>"+"我希望我的生命中有你"+"</strong>");
					} else  if (windy.current == 18) {
						$("h2").html("<strong>"+"共享快乐悲伤"+"</strong>");
					} else if (windy.current == 20) {
						$("h2").html("<strong>"+"我想和你一起虚度时光"+"</strong>");
					} else if (windy.current == windy.itemsCount-12) {
						$("h2").html("<strong>"+"我希望和你一起贯彻未来"+"</strong>");
					} else if (windy.current == windy.itemsCount-11) {
						$("h2").html("<strong>"+"数遍生命的公路牌"+"</strong>");
					} else if (windy.current == windy.itemsCount-2) {
						$("h2").html("<strong>"+"和你一起，相拥而坐都觉得自己是最幸福的人"+"</strong>");
					} else if (windy.current == windy.itemsCount-1) {
						$("h2").html("<strong>"+"前面的路还很长，我们牵手而行。"+"</strong>");
					} else {
						$("h2").html("<strong>"+"没见面都这么喜欢的人，怎么甘愿之做朋友。"+"</strong>");
					}
				} ).on( 'mouseup mouseleave', function( event ) {
					
					allownavnext = false;
				
				} );

				function navnext() {
					if( allownavnext ) {
						windy.next();
						setTimeout( function() {	
							navnext();
						}, 150 );
					}
				}

				function navprev() {
					if( allownavprev ) {
						windy.prev();
						setTimeout( function() {	
							navprev();
						}, 150 );
					}
				}

			});
			
			$(function(){
			   $("audio")[0].play(); 
			})
			
		</script>
    </body>
</html>
