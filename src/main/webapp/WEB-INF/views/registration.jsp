<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
	body, html{
    background-color:lightblue;

}

.register-form{
   left: 50%;
    top: 50%;
    position: absolute;
    -webkit-transform: translate3d(-50%, -50%, 0);
    -moz-transform: translate3d(-50%, -50%, 0);
    transform: translate3d(-50%, -50%, 0);
}

.regbutton{    
    height: 50px;
    width: 200px;
    background-color:tomato;
    border-radius: 0px;
    font-size: 18px;
    color:white;
    border: none !important;
    margin-bottom: 5px;
}
.regbutton:hover{    
    color: white;
    background-color:#aa422f;
}
.regbutton:active{    
    color: white;
    background-color:#aa422f;
}
.logbutton{    
    height: 50px;
    width: 200px;
    background-color:yellowgreen;
    border-radius: 0px;
    font-size: 18px;
    color:white;
    border: none !important;
    margin-bottom: 5px;
}
.logbutton:hover{    
    color: white;
    background-color:darkolivegreen;
}
.logbutton:active{    
    color: white;
    background-color:darkolivegreen;
}

.register-form label{
    color: black;
    
}
.register-form input{
    margin-bottom: 5px;
    width: 430px;
    height: 40px;
    border-radius: 0px;
}
	
	</style>
</head>
<body>
<%@ include file="jspf/header.jspf" %>
<div class="container-fluid">
	 <form action="register" method="post" class="register-form"> 
      <div class="row">      
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label for="username">Nazwa użytkownika</label>
               <input name="username" class="form-control" type="text">    
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label for="email">Email</label>
               <input name="email" class="form-control" type="email">             
           </div>            
      </div>
      <div class="row">
           <div class="col-md-4 col-sm-4 col-lg-4">
              <label for="password">Hasło</label>
               <input name="password" class="form-control" type="password">             
           </div>            
      </div>
      <hr>
      <div class="row">
           <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
           <button class="btn btn-default regbutton">Zarejestruj</button>
           
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6 col-lg-6">
           <button class="btn btn-default logbutton">Zaloguj</button>           
          </div>          
      </div>    
    </form>
</div>
<%@ include file="jspf/footer.jspf" %>
</body>
</html>