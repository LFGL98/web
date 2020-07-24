

<%@page import="java.sql.*"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*" %>
<%
ResultSet nombre = (ResultSet) request.getSession().getAttribute("nombre");
String user = nombre.getString("Nombre");
if(user.equals("")){
out.println("<script>location.replace('index.jsp');</script>");
}
%>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>INICIO</title>

    <link rel="shortcut icon" href="images/logotipo-refaccionaria-circuito-removebg-preview.png">
 <script src="java/cerrar.js"></script>
  <script src="java/usuario.js"></script>
  
   

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.deep_purple-pink.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
    
  </head>
  <body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
    
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header mdl-layout__header--scroll mdl-color--primary">
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
           <center><img src="images/logotipo-refaccionaria-circuito-removebg-preview.png" width="500" height="200"></center>
        </div>
        <div class="mdl-layout--large-screen-only mdl-layout__header-row">
        </div>
        <div class="mdl-layout__tab-bar mdl-js-ripple-effect mdl-color--primary-dark">
         <a href="#overview" class="mdl-layout__tab is-active">Inicio</a>
          <a href="#empleados" class="mdl-layout__tab">Empleados</a>
           <a href="#agricultura" class="mdl-layout__tab">Agricultura</a>
          <a href="#construccion" class="mdl-layout__tab">Construccion</a>
          <a href="#automoviles" class="mdl-layout__tab">Automoviles</a>
          <a href="#distribuidores" class="mdl-layout__tab">Distribuidores</a>
          
          <a href="logout.do?cerrar=true" class="mdl-layout__tab">Salir <%= user%></a>
        </div>
      </header>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview" >
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <%
                  Distribuidor num0 = new Distribuidor();
                  ResultSet num1 = num0.get();
                  int numdistribuidor = num0.conteo();
                  %>
                <h4>Distribuidores</h4>
                <h6>Distribuidores registrados: <%= numdistribuidor %>  </h6>
              </div>
              
            </div>
           
          </section>
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <%
                Agricultura num2 = new Agricultura();
                ResultSet num3 = num2.get();
                int numagricultura= num2.conteo();
                %>
                <h4>Agricultura</h4>
                <h6>Productos en bodega: <%= numagricultura%>  </h6>
              </div>
              
            </div>
           
          </section>
                 
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <%
                 Automoviles num4 = new Automoviles();
                 ResultSet num5 = num4.get();
                 int numauto = num4.conteo();
                  %>
                <h4>Automoviles</h4>
              	<h6>Productos en bodega:  <%= numauto%></h6>
              </div>
              
            </div>
           
          </section>
                     
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <%
                  Construccion num6 = new Construccion();
                  ResultSet num7 = num6.get();
                  int numconstruccion = num6.conteo();
                  %>
                <h4>Construcción</h4>
              	<h6>Productos en bodega: <%= numconstruccion%></h6>
              </div>
             
            </div>
           
          </section>   
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <%
                  Empleados num8 = new Empleados();
                  ResultSet num9 = num8.get();
                  int numempleados= num8.conteo();
                 %>
                <h4>Usuarios</h4>
                <h6>Usuarios registrados: <%= numempleados%></h6>
              </div>
              
            </div>
           
          </section>
        </div>
             
           <div class="mdl-layout__tab-panel" id="empleados">
          <center> <div class="mdl-card__actions">
                <a href="javascript:IDEMPLEADOS();" class="mdl-button">Buscar por id</a>
                 <a href="javascript:NOMBREEMPLEADOS();" class="mdl-button">Buscar por nombre</a>
                 
                 
              </div>
          </center>
          <br>
          <%
       Empleado2 listempleado = new Empleado2();
       ResultSet listempleados = listempleado.getEmpleados2();
          %>
          <%while(listempleados.next()){%>
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/usuario-hombre-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                 <h5>ID: <%= listempleados.getString("ID") %> </h5>
                 <strong>Nombre: <p><%= listempleados.getString("Nombre") %></p> </strong>
                 <strong>Apellidos:<p><%= listempleados.getString("Apellidos")%></p></strong>
                 <strong>Telefono:<p>+52 (<%= listempleados.getString("Telefono")%>)</p></strong>
                
                     
              </div>
              
            </div>
           
          </section>
              <%}%>
    </div>
                
                <div id="ID" style="display: none;">
                    <br>
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="id_empleados.do" target="_blank" >
                    <a href="javascript:IDEMPLEADOS2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Empleado</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="id_empleado" id="id_empleado" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-id-empleado" id="btn-id-empleado" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                 <div id="NOMBRE" style="display: none;">
                     <br>
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
               
                <form action="nombre_empleados.do" target="_blank" >
                    <a href="javascript:NOMBREEMPLEADOS2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                   <h5>Buscar Empleado</h5>
                  <label>Ingrese el nombre a buscar: <input type="text" id="nombre_empleado" name="nombre_empleado" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-nombre-empleado" id="btn-nombre-empleado" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
               
                
                <br>
                <div id="IDDISTRIBUIDOR" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="id_distribuidores.do" target="_blank" >
                    <a href="javascript:IDDISTRIBUIDOR2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Distribuidor</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="id_distribuidor" id="id_distribuidor" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-id-distribuidor" id="btn-id-distribuidor" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                 <div id="NOMBREDISTRIBUIDOR" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
               <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
               
                <form action="nombre_distribuidores.do" target="_blank" >
                    <a href="javascript:NOMBREDISTRIBUIDOR2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                    <h5>Buscar Distribuidor</h5>
                  <label>Ingrese el nombre a buscar: <input type="text" name="nombre_distribuidor" id="nombre_distribuidor" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-nombre-distribuidor" id="btn-nombre-distribuidor" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="id_agricultura" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="id_agriculturas.do" target="_blank" >
                    <a href="javascript:IDAGRICULTURA2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="id_agricultura" id="id_agricultura"  required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-id-agricultura" name="btn-id-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="nombre_agricultura" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="nombre_agriculturas.do" target="_blank" >
                    <a href="javascript:NOMBREAGRICULTURA2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el Nombre a buscar: <input type="text" name="nombre_agricultura" id="nombre_agricultura" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-nombre-agricultura" id="btn-nombre-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="palabra_agricultura" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="palabra_agriculturas.do" target="_blank" >
                    <a href="javascript:PALABRAAGRICULTURA2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese la palabra clave del producto: <input type="text" name="palabra_agricultura" id="palabra_agricultura" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-palabra-agricultura" id="btn-palabra-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="id_construccion" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="id_construcciones.do" target="_blank" >
                    <a href="javascript:IDCONSTRUCCION2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="id_construccion" id="id_construccion" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-id-construccion" id="btn-id-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="nombre_construccion" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="nombre_construcciones.do" target="_blank" >
                    <a href="javascript:NOMBRECONSTRUCCION2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                     
                  <label>Ingrese el nombre a buscar: <input type="text" name="nombre_construccion" id="nombre_construccion" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-nombre-construccion" id="btn-nombre-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="palabra_construccion" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="palabra_construcciones.do" target="_blank" >
                    <a href="javascript:PALABRACONSTRUCCION2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese la palabra clave a buscar: <input type="text" name="palabra_construccion" id="palabra_construccion" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-palabra-construccion" id="btn-palabra-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="id_automoviles" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="id_automovil.do" target="_blank" >
                    <a href="javascript:IDAUTOMOVILES2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="id_automoviles" id="id_automoviles" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-id-automoviles" id="btn-id-automoviles" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="nombre_automoviles" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="nombre_automovil.do" target="_blank" >
                    <a href="javascript:NOMBREAUTOMOVILES2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el nombre a buscar: <input type="text" name="nombre_automoviles" id="nombre_automoviles" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-nombre-automovil" id="btn-nombre-automovil" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                <div id="palabra_automoviles" style="display: none;">
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="palabra_automovil.do" target="_blank" >
                    <a href="javascript:PALABRAAUTOMOVILES2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Buscar Producto</h5>
                  <label>Ingrese el ID a buscar: <input type="text" name="palabra_automovil" id="palabra_automovil" required></label>
                
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-palabra-automovil" id="btn-palabra-automovil" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      <div class="mdl-layout__tab-panel" id="agricultura">
          <center> <div class="mdl-card__actions">
                <a href="javascript:IDAGRICULTURA();" class="mdl-button">Buscar por id</a>
                 <a href="javascript:NOMBREAGRICULTURA();" class="mdl-button">Buscar por nombre</a>
                 <a href="javascript:PALABRAAGRICULTURA();" class="mdl-button">Buscar por Palabra Clave</a>
                 <a href="javascript:modificar_agricultura();" class="mdl-button">Actualizar Palabra Clave</a>
              </div>
          </center>
          <br>
          <%
          Agricultura2 listaagri = new Agricultura2();
          ResultSet listagri = listaagri.getProductos2();
          %>
          <%while(listagri.next()){%>
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                 <h4>ID: <%= listagri.getString("ID") %> </h4>
                 <strong>Nombre:<p><%= listagri.getString("Nombre") %></p></strong>
                 <strong>Descripción:<p><%= listagri.getString("Descripcion")%></p></strong>
                 <strong>Precio:<p> $<%= listagri.getString("Precio")%></p></strong>
                 <strong>Ubicación:<p> <%= listagri.getString("Ubicacion")%></p></strong>
                 <strong>Palabra Clave:<p> <%= listagri.getString("Palabra_Clave")%></p></strong>
                 <strong>ID Distribuidor:<p> <%= listagri.getString("ID_distribuidor")%></p></strong>
                     
              </div>
              
            </div>
           
          </section>
              <%}%>
    </div>
                
      <div class="mdl-layout__tab-panel" id="construccion">
          <center> <div class="mdl-card__actions">
                <a href="javascript:IDCONSTRUCCION();" class="mdl-button">Buscar por id</a>
                 <a href="javascript:NOMBRECONSTRUCCION();" class="mdl-button">Buscar por nombre</a>
                 <a href="javascript:PALABRACONSTRUCCION();" class="mdl-button">Buscar por Palabra Clave</a>
                 <a href="javascript:modificar_construccion();" class="mdl-button">Actualizar Palabra Clave</a>
              </div>
          </center>
          <br>
          <%
          Construccion2 listconst = new Construccion2();
          ResultSet listconst2 = listconst.getConstruccion2();
          %>
          <%while(listconst2.next()){%>
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                 <h4>ID: <%= listconst2.getString("ID") %> </h4>
                 <strong>Nombre:<p><%= listconst2.getString("Nombre") %></p></strong>
                 <strong>Descripción:<p><%= listconst2.getString("Descripcion")%></p></strong>
                 <strong>Precio:<p> $<%= listconst2.getString("Precio")%></p></strong>
                 <strong>Ubicación:<p> <%= listconst2.getString("Ubicacion")%></p></strong>
                 <strong>Palabra Clave:<p> <%= listconst2.getString("Palabra_Clave")%></p></strong>
                 <strong>ID Distribuidor:<p> <%= listconst2.getString("ID_distribuidor")%></p></strong>
                     
              </div>
              
            </div>
           
          </section>
              <%}%>
    </div>
    <div class="mdl-layout__tab-panel" id="automoviles">
          <center> <div class="mdl-card__actions">
                <a href="javascript:IDAUTOMOVILES();" class="mdl-button">Buscar por id</a>
                 <a href="javascript:NOMBREAUTOMOVILES();" class="mdl-button">Buscar por nombre</a>
                 <a href="javascript:PALABRAAUTOMOVILES();" class="mdl-button">Buscar por Palabra Clave</a>
                 <a href="javascript:modificar_automoviles();" class="mdl-button">Actualizar Palabra Clave</a>
              </div>
          </center>
          <br>
          <%
          Autos2 listautos = new Autos2();
          ResultSet listauto = listautos.getAutos2();
          %>
          <%while(listauto.next()){%>
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                 <h4>ID: <%= listauto.getString("ID") %> </h4>
                 <strong>Nombre:<p><%= listauto.getString("Nombre") %></p> </strong>
                 <strong>Descripción: <p><%= listauto.getString("Descripcion")%></p></strong>
                 <strong>Precio:<p>$<%= listauto.getString("Precio")%></p></strong>
                 <strong>Ubicación:<p><%= listauto.getString("Ubicacion")%></p></strong>
                 <strong>Palabra Clave:<p><%= listauto.getString("Palabra_Clave")%></p></strong><br>
                 <strong>ID Distribuidor <p><%= listauto.getString("ID_distribuidor")%></p></strong>
                     
              </div>
              
            </div>
           
          </section>
              <%}%>
    </div>
    <div class="mdl-layout__tab-panel" id="distribuidores">
       
          <center> <div class="mdl-card__actions">
                <a href="javascript:IDDISTRIBUIDOR();" class="mdl-button">Buscar por id</a>
                 <a href="javascript:NOMBREDISTRIBUIDOR();" class="mdl-button">Buscar por nombre</a>
                 
              </div>
          </center>
          <br>
          <%
          AdminDistribuidores listdistri= new AdminDistribuidores();
          ResultSet LISTA = listdistri.getDistribuidor2();
          %>
          <%while(LISTA.next()){%>
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
                <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                    <div class="mdl-card__supporting-text">
                        <h4>ID: <%= LISTA.getString("ID") %></h4>
                        <strong>Nombre:<p><%=LISTA.getString("Nombre") %></p></strong>
                        <strong>RFC:<p><%=LISTA.getString("RFC") %></p></strong>
                        <strong>TELEFONO:<p>+52 (<%=LISTA.getString("Telefono") %>)</p></strong>
                        
                    
                    
                    </div>
                    </div>
          </section>
          <%}%>
    </div>
    <div id="modificar_agricultura" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="modificar_agricultura.do" target="_blank" >
                    <a href="javascript:modificar_agricultura2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Agricultura</h5>
                  <h6>Actualizar Palabra Clave</h6>
                  <input type="text" name="id_agricultura" id="id_agricultura" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nombre: <input type="text" name="nombre_agricultura" id="nombre_agricultura" required></label>
                  <br><label>Descripcion: <input type="text" name="descripcion_agricultura" id="descripcion_agricultura" required></label>
                  <br><label>Precio: <input type="text" name="precio_agricultura" id="precio_agricultura" required></label>
                  <br><label>Ubicación: <input type="text" name="ubicacion_agricultura" id="ubicacion_agricultura" required></label>
                  <br><label>Palabra Clave <input type="text" name="palabra_agricultura" id="palabra_agricultura" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modagri1 = new AdminDistribuidores();
                      ResultSet Modagri1 = modagri1.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-agricultura" id="id-distribuidor-agricultura">
                          <%while(Modagri1.next()){%>
                          <option value="<%= Modagri1.getString("ID") %>" ><%= Modagri1.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-modificar-agricultura" id="btn-modificar-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      <div id="modificar_construccion" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="modificar_construccion.do" target="_blank" >
                    <a href="javascript:modificar_construccion2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Construccion</h5>
                  <h6>Actualizar Palabra Clave</h6>
                  <input type="text" name="id_construccion" id="id_construccion" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nombre: <input type="text" name="nombre_construccion" id="nombre_construccion" required></label>
                  <br><label>Descripcion: <input type="text" name="descripcion_construccion" id="descripcion_construccion" required></label>
                  <br><label>Precio: <input type="text" name="precio_construccion" id="precio_construccion" required></label>
                  <br><label>Ubicación: <input type="text" name="ubicacion_construccion" id="ubicacion_construccion" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_construccion" id="palabra_construccion" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modconstruc2 = new AdminDistribuidores();
                     ResultSet Modconstruc1 = modconstruc2.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-construccion" id="id-distribuidor-agricultura">
                          <%while(Modconstruc1.next()){%>
                          <option value="<%= Modconstruc1.getString("ID") %>" ><%= Modconstruc1.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-modificar-construccion" id="btn-modificar-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                       <div id="modificar_automoviles" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="modificar_automoviles.do" target="_blank" >
                    <a href="javascript:modificar_automoviles2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Automoviles</h5>
                  <h6>Actualizar Palabra Clave</h6>
                  <input type="text" name="id_automovil" id="id_automovil" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nombre: <input type="text" name="nombre_automovil" id="nombre_automovil" required></label>
                  <br><label>Descripcion: <input type="text" name="descripcion_automovil" id="descripcion_automovil" required></label>
                  <br><label>Precio: <input type="text" name="precio_automovil" id="precio_automovil" required></label>
                  <br><label>Ubicación: <input type="text" name="ubicacion_automovil" id="ubicacion_automovil" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_automovil" id="palabra_automovil" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modauto2 = new AdminDistribuidores();
                     ResultSet Modauto1 = modauto2.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-automovil" id="id-distribuidor-automovil">
                          <%while(Modauto1.next()){%>
                          <option value="<%= Modauto1.getString("ID") %>" ><%= Modauto1.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-modificar-automovil" id="btn-modificar-automovil" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
      </main>
    </div>
   
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  </body>
</html>
