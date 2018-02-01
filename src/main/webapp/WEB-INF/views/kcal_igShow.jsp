<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Show values of products</title>
</head>
<body>
<div class="container">
  <h2>Wartości szukanego produktu:</h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nazwa produktu</th>
        <th>Kalorie</th>
        <th>Węglowodany</th>
        <th>Białko</th>
        <th>Tłuszcz</th>
        <th>Indeks glikemiczny</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="prod">
      <tr>
        <td>prod.name</td>
        <td>prod.calories</td>
        <td>${prod.protein}</td>
        <td>${prod.carbohydrates}</td>
        <td>${prod.fat}</td>
        <td>${prod.ig}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>