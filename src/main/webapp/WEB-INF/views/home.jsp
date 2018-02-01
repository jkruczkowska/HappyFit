<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home page</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-color: lightblue
}
</style>
</head>

<body>
	<div class="container">
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="home">Home</a></li>
			<li class="active"><a href="searchProduct">Kalorie</a></li>
			<li class="active"><a href="add">Kalkulator</a></li>
			<li class="active"><a data-toggle="pill" class="nav nav-pills nav-justified" href="#menu3">Przepisy</a></li>
			<li class="active"><a href="login">Logowanie</a></li>
		</ul>
		
		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
		<div class="" align="center">
			<h4>
				<img alt="" src="DIN.jpg">
			</h4>
		</div>
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			align="center">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<div class="carousel-inner">
				<div class="item active">
					<img alt="" src="homeJoga2.jpg" style="width: 500px; height: 300px">
				</div>

				<div class="item">
					<img alt="" src="vegeclock.jpg" style="width: 500px; height: 300px">
				</div>
				<div class="item">
					<img alt="" src="piramida.jpg" style="width: 500px; height: 300px">
				</div>
				<div class="item">
					<img alt="" src="homeJoga1.jpg" style="width: 500px; height: 300px">
				</div>
				<div class="item">
					<img alt="" src="vegebike.jpg" style="width: 500px; height: 300px">
				</div>
			</div>

			<a class="left carousel-control"
				href="#myCarousel" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

			</div>
			<!-- <div id="menu1" class="tab-pane fade">
				<h3>Wyszukaj produkt:</h3>
				<input id="msg" type="text" class="form-control" name="msg" placeholder="wpisz szukany produkt">
				<a href="showValues" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-search"></span> Search 
        </a>
			</div> -->
			<div id="menu2" class="tab-pane fade">
				<h3>Kalkulatory: </h3>
			</div>
			<div id="menu3" class="tab-pane fade">
				<h3>Menu 3</h3>
				<p>Eaque ipsa quae ab illo inventore veritatis et quasi
					architecto beatae vitae dicta sunt explicabo.</p>
			</div>
		</div>
	</div>
	<%@ include file="jspf/footer.jspf" %>
</body>
</html>