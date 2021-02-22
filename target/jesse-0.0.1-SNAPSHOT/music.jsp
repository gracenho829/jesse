<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel = "stylesheet" type = "text/css" href = "music.css" />
  <script src="resources/js/music.js" defer></script>
</head>
<style>

	body{
		background-color:white;
		text-align: center;
		padding: 0,0,0,0;
	}
	.nav{
	position:fixed; 
	right:10px;
	top: 30px;
	}
	
</style>
<body>

			<div class = nav>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			    <div class="navbar-nav">
			     <a class="nav-item nav-link" href="index.html" >HOME</a>
			      <a class="nav-item nav-link active" href="about.html" > ABOUT <span class="sr-only">(current)</span></a>
			      <a class="nav-item nav-link" href="shows.html" >SHOWS</a>
			      <a class="nav-item nav-link" href="music.jsp" >MUSIC</a>
			      <a class="nav-item nav-link disabled" href="photos.html" >PHOTOS</a>
			    </div>
			  </div>
			</nav>
			</div>
			

			<div id = "title">
				<h2>MUSIC</h2>
				<table>
					<tr> 
						<th><h4>NOW PLAYING</h4></th>
						<th><h4 id="songTitle"></h4></th>
						<th> <div id="audio"></div></th>
					</tr> 
				</table>
			</div>
			<table id="shows">
				<tr>
					<th><a class = "showHeader" onclick="showOne()">MERRY CHRISTMAS IN HANDONG</a></th>
					<th><a class = "showHeader" onclick="showTwo()">I FALL IN LOVE TOO EASILY</a></th>
					<th><a class = "showHeader" onclick="showThree()">ㅇㄴㅇㅇ?</a></th>
				</tr>
			</table>
			
			<script>
					function showOne(){
					document.getElementById("show1").style.display = "block";
					document.getElementById("showTwo").style.display="none";
					document.getElementById("showThree").style.display = "none";
					}
			
					function showTwo(){
					document.getElementById("show1").style.display = "none";
					document.getElementById("showTwo").style.display="block";
					document.getElementById("showThree").style.display = "none";
					}
			
			
					function showThree(){
					document.getElementById("show1").style.display = "none";
					document.getElementById("showTwo").style.display="none";
					document.getElementById("showThree").style.display = "block";
					}
			</script>
	
	<%
  		 String[] showOneMusic = {"Winter Wonderland", "Have Yourself A Merry Little Christmas", "Across the Universe", "Blower's Daughter", "Best Part", "Misty", "I Wish You Love", "All I Want For Christmas Is You", "The Chicken"};
		 String [] videoUrlOne = {"https://youtube.com/embed/LvHPUDFfVfc?autoplay=0&modestbranding=1", "https://youtube.com/embed/KWhrUIAy3oY?autoplay=0&modestbranding=1", "https://youtube.com/embed/t1_KNSsJrc4?autoplay=0&modestbranding=1", "https://youtube.com/embed/pRIO8s-XJu4?autoplay=0&modestbranding=1", "https://youtube.com/embed/CrPmyS6Wrp8?autoplay=0&modestbranding=1", "https://youtube.com/embed/W-Vq2IgSkwg?autoplay=0&modestbranding=1", "https://youtube.com/embed/FD2pkQJ3_Zs?autoplay=0&modestbranding=1", "https://youtube.com/embed/EIp8uF8ruOI?autoplay=0&modestbranding=1", "https://youtube.com/embed/JIysm-ySaD8?autoplay=0&modestbranding=1"};
		 String[] showTwoMusic = {"How Deep Is Your Love", "Best Part", "Across the Universe", "I Fall In Love Too Easily", "Just the Two Of Us", "Green and Gold", "Misty", "Strasbourg St. Denis", "Lover Boy", "Think About' Chu", "Thank You Next","도도해","Red Baron","Englishman In New York"};
		 String[] videoUrlTwo ={"https://youtube.com/embed/mqaAiBeOOsM?autoplay=0&modestbranding=1","https://youtube.com/embed/2hd51a1TY0c?autoplay=0&modestbranding=1", "https://youtube.com/embed/eD2uW5KM-9s?autoplay=0&modestbranding=1","https://youtube.com/embed/CdWU13FZ6II?autoplay=0&modestbranding=1", "https://youtube.com/embed/Be7zjML7ywg?autoplay=0&modestbranding=1", "https://youtube.com/embed/ok02-_wchs8?autoplay=0&modestbranding=1", "https://youtube.com/embed/O020Hi5QSxw?autoplay=0&modestbranding=1", "https://youtube.com/embed/kXmQrmV98gU?autoplay=0&modestbranding=1", "https://youtube.com/embed/HoA9gVj-lfo?autoplay=0&modestbranding=1","https://youtube.com/embed/OWpD-FEmqw0?autoplay=0&modestbranding=1", "https://youtube.com/embed/vdUJwSqUmMU?autoplay=0&modestbranding=1", "https://youtube.com/embed/a9RGfMoOKiQ?autoplay=0&modestbranding=1", "https://youtube.com/embed/7nByzo_bPSs?autoplay=0&modestbranding=1", "https://youtube.com/embed/VT2Loypb3Ac?autoplay=0&modestbranding=1"};
		 int[] keyboard = {1,1,1,0,1,1,1,1,1};
		 int[] guitar = {1,0,0,1,1,0,0,1,1};
		 int[] bass = {1,0,1,1,1,1,0,1,1};
		 int[] drums = {1,0,1,1,1,1,0,1,1};
		 int[] trumpet = {1,1,0,1,2,1,0,2,1};
		 int[] vocal = {0,1,1,0,1,0,1,0,0};
		 
		 int[] keyboard2={1,1,1,1,0,1,1,1,1,1,1,1,1,1};
		 int[] guitar2=  {1,1,0,0,1,1,1,1,1,1,1,1,1,1};
		 int[] bass2=    {1,1,1,1,0,0,1,1,2,1,1,1,1,1};
		 int[] drums2=   {1,1,1,1,1,1,1,1,1,1,1,1,1,1};
		 int[] trumpet2= {0,2,0,3,2,0,1,1,3,0,1,1,1,1};
		 int[] vocal2=   {0,1,1,0,1,2,0,0,0,0,1,1,0,1};

		 request.setAttribute("showOneMusic", showOneMusic);
		 request.setAttribute("videoUrlOne", videoUrlOne);
		 request.setAttribute("showTwoMusic", showTwoMusic);
		 request.setAttribute("videoUrlTwo", videoUrlTwo);
		 request.setAttribute("keyboard", keyboard);
		 request.setAttribute("keyboard2", keyboard2);
		 request.setAttribute("guitar", guitar);
		 request.setAttribute("guitar2", guitar2);
		 request.setAttribute("bass",bass);
		 request.setAttribute("bass2",bass2);
		 request.setAttribute("drums", drums);
		 request.setAttribute("drums2", drums2);
		 request.setAttribute("trumpet", trumpet);
		 request.setAttribute("trumpet2", trumpet2);
		 request.setAttribute("vocal", vocal);
		 request.setAttribute("vocal2", vocal2);
 %>
			<div id="show1">
			<br><br> 
			<c:forEach var="showOneMusic" items="${showOneMusic}" varStatus ="status">
				<div class="song">
					<div class = "titleAndVideo">
						<h3><c:out value="${showOneMusic}" /></h3>
						<iframe width="525" height="290" src=<c:url value="${videoUrlOne[status.index]}"/>></iframe>
					</div>
					
					<div class="session">	
						<h3>Session</h3>
						<c:if test = "${keyboard[status.index]==1}">
						<h4 class="keyboard" style="margin-top: 40px;">Keyboard - Wooju So</h4>
						</c:if>
						<c:if test = "${guitar[status.index]==1}">
						<h4 class="guitar">Guitar - Geon Cheong</h4>
						</c:if>
						<c:if test = "${bass[status.index]==1}">
						<h4 class="bass">Bass - Handong Ryu</h4>
						</c:if>
						<c:if test = "${drums[status.index]==1}">
						<h4 class="drums">Drums - JongSeo Won</h4>
						</c:if>
						<c:choose>
						<c:when test = "${trumpet[status.index]==1}">
						<h4 class="trumpet">Trumpet - Byunghoon Kim </h4>
						</c:when>
						<c:when test = "${trumpet[status.index] == 2}">
						<h4 class ="trumpet">Vocal - Byunghoon Kim</h4>
						</c:when>
						</c:choose>
						<c:if test = "${vocal[status.index]==1}">
						<h4 class="vocal">Vocal - Grace Nho</h4>
						</c:if>
					</div>
				</div>
				<hr>
				</c:forEach>
			</div>
			
			
			
			
			<div id="showTwo">
				<br><br> 
				<c:forEach var="showTwoMusic" items="${showTwoMusic}" varStatus ="status">
				<div class="song">
					<div class = "titleAndVideo">
						<h3><c:out value="${showTwoMusic}" /></h3>
 						 	<iframe width="525" height="290" src=<c:url value="${videoUrlTwo[status.index]}"/>></iframe>
					</div>
					<div class="session">	
						<h3>Session</h3>
						<c:if test = "${keyboard2[status.index]==1}">
						<h4 class="keyboard" style="margin-top: 40px;">Keyboard - Wooju So</h4>
						</c:if>
						<c:if test = "${guitar2[status.index]==1}">
						<h4 class="guitar">Guitar - Geon Cheong</h4>
						</c:if>
						<c:choose>
						<c:when test = "${bass2[status.index]==1}">
						<h4 class="bass">Bass - Handong Ryu</h4>
						</c:when>
						<c:when test = "${bass2[status.index]==2}">
						<h4 class="bass">Bass - Byungchun Park</h4>
						</c:when>
						</c:choose>
						<c:if test = "${drums2[status.index]==1}">
						<h4 class="drums">Drums - JongSeo Won</h4>
						</c:if>
						<c:choose>
						<c:when test = "${trumpet2[status.index]==1}">
						<h4 class="trumpet">Trumpet - Byunghoon Kim </h4>
						</c:when>
						<c:when test = "${trumpet2[status.index] == 2}">
						<h4 class ="trumpet">Vocal - Byunghoon Kim</h4>
						</c:when>
						<c:when test = "${trumpet2[status.index] == 3}">
						<h4 class ="trumpet">Vocal & Trumpet - Byunghoon Kim</h4>
						</c:when>
						</c:choose>
						<c:choose>
						<c:when test = "${vocal2[status.index]==1}">
						<h4 class="vocal">Vocal - Grace Nho</h4>
						</c:when>
						<c:when test = "${vocal2[status.index]==2}">
						<h4 class="vocal">Vocal & Bass - Grace Nho</h4>
						</c:when>
						</c:choose>
					</div>
				</div>
				<hr>
				</c:forEach>
			</div>
	
			<div id="showThree">
			 	<h3 id="sorryMessage">I'm Sorry! <br>Our Sessions are a little busy jamming. <br>
			 	Please wait and we will have this page up and running!</h3>
			</div>
</body>
</html>