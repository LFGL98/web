

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.invalidate();
%>
<!DOCTYPE html>
<html>
    <head>
       
<!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        	 <link rel="shortcut icon" href="images/logotipo-refaccionaria-circuito-removebg-preview.png">
            <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
             <link rel="stylesheet" href="css/body.css">
             <script src="java/script.js" ></script>
             <script>
                 function nobackbutton(){
                     window.location.hash="no-back-button";
                     window.location.hash="Again-No-back-button";
                     window.onhashchange=function(){window.location.hash="no-back-button";}
                     
                 }
             </script>
    </head>
    <body onload="nobackbutton();">
     
 <div class="container">
    	<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="panel panel-login">
<div class="panel-heading">
<div class="row">
<div class="col-xs-6">
<a href="#" class="active" id="login-form-link">Iniciar Sesion</a>
</div>
<div class="col-xs-6">
<a href="#" id="register-form-link">Registrar</a>
</div>
</div>
<hr>
</div>
<div class="panel-body">
<div class="row">
<div class="col-lg-12">
    <center><img src="css/logotipo-refaccionaria-circuito.jpg" width="500" height="200"></center>
<form id="login-form" action="login.do" method="post" role="form" style="display: block;">
<div class="form-group">
<input type="number" name="username" id="username" tabindex="1" class="form-control" placeholder="ID" required>
</div>
<div class="form-group">
<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" required>
</div>
<div class="form-group">
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Iniciar sesion">  <input type="reset" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Reset">

</div>
</div>
</div>

</form>
    <form id="register-form" action="insertar_empleado.do" method="post" role="form" target="_blank" style="display: none;">
<div class="form-group">
<input type="number" name="id" id="id" tabindex="1" class="form-control" placeholder="ID" required>
</div>
<div class="form-group">
<input type="text" name="nombre" id="nombre" tabindex="1" class="form-control" placeholder="Nombre" required>
</div>
<div class="form-group">
<input type="text" name="apellidos" id="apellidos" tabindex="2" class="form-control" placeholder="Apellidos" required>
</div>
    <div class="form-group">
        <input type="number" name="telefono" id="telefono" tabindex="2" class="form-control" placeholder="Telefono" required>
</div>
<div class="form-group">
<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" required>
</div>
<div class="form-group">
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrar">
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
