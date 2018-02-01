<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Formularz danych</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	div {
	overflow: hidden;
    vertical-align: top;
		padding: 0;
		width: 40%;
	}
</style>
</head>
<body style="background-color: lightblue">
<%@ include file="jspf/header.jspf" %>
	<div class="container">
		<h3 style="color: darkgreen">Wypełnij poniższy formularz, pomoże to w ustaleniu celu
		<br>i dopasowaniu indywidualnej diety:</h3>

		<form:form method="post" modelAttribute="userProfile">

			<form:hidden path="id" />

			<div class="col-xs-3" align="left"><label><span class="glyphicon glyphicon-arrow-up"
					style="color: green"></span> Wzrost:</label>
				<form:input placeholder="wpisz wzrost w centymetrach" class="form-control" path="height"/>
			</div>

			<div class="col-xs-3" align="left">

				<label><span class="glyphicon glyphicon-hourglass" style="color: green"></span> Rok urodzenia:</label>
				<form:input class="form-control" path="yearOfBirth" placeholder="wpisz rok urodzenia" />
			</div>
			
			<div class="col-xs-3" align="left">

				<label><span class="glyphicon glyphicon-scale" style="color: green"></span> Waga:</label>
				<form:input class="form-control" path="weight" placeholder="wpisz wagę w kilogramach" />
			</div>
			
			<div class="form-group">

				<label><i class="fa fa-venus-mars" style="font-size: 24px; color: green"></i> Płeć:</label><br>
					
				<label>Kobieta</label>
				<form:radiobutton path="gender" value="K" />
				<br>
				<label>Mężczyzna</label>
				<form:radiobutton path="gender" value="M" />
			</div>

			<div class="form-group">

				<label><i class="fa fa-bicycle"
					style="font-size: 24px; color: green"></i> Współczynnik aktywności:</label>
 				<form:select class="form-control" path="activity">
					<form:options items="${activity}" name="${activity}"></form:options>
				</form:select>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-info btn-lg" value="Prześlij">
			</div>
		</form:form>
	</div>
	<%@ include file="jspf/footer.jspf" %>
</body>
</html>





























