
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
 <script src="java/admin.js"></script>
  <script src="java/admin2.js"></script>
  <script>
    function message() { 
   window.location.reload();
}
    </script>
    

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
          <a href="#operaciones" class="mdl-layout__tab">Operaciones</a>
          <a href="logout.do?cerrar=true" class="mdl-layout__tab">Salir de <%=user%></a>
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
                  Distribuidor num03 = new Distribuidor();
                  ResultSet num13 = num03.get();
                  int numdistribuidor3 = num03.conteo();
                  %>
                <h4>Distribuidores</h4>
                <h6>Distribuidores registrados: <%= numdistribuidor3 %>  </h6>
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
                Agricultura num23 = new Agricultura();
                ResultSet num33 = num23.get();
                int numagricultura3= num23.conteo();
                %>
                <h4>Agricultura</h4>
                <h6>Productos en bodega: <%= numagricultura3%>  </h6>
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
                 Automoviles num43 = new Automoviles();
                 ResultSet num53 = num43.get();
                 int numauto3 = num43.conteo();
                  %>
                <h4>Automoviles</h4>
              	<h6>Productos en bodega:  <%= numauto3%></h6>
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
                  Construccion num36 = new Construccion();
                  ResultSet num73 = num36.get();
                  int numconstruccion3 = num36.conteo();
                  %>
                <h4>Construcción</h4>
              	<h6>Productos en bodega: <%= numconstruccion3%></h6>
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
               
                
                
                <div id="IDDISTRIBUIDOR" style="display: none;">
                    <br>
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
                     <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
                    <br>
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
    <div class="mdl-layout__tab-panel" id="operaciones">
        
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/usuario-hombre-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                    <center> <div class="mdl-card__actions">
                            <h3>Empleados</h3>
                <a href="javascript:modificar_empleado();" class="mdl-button">Modificar</a>
                 <a href="javascript:eliminar_empleado();" class="mdl-button">Eliminar</a>
                 <a href="javascript:insertar_empleado();" class="mdl-button">Insertar</a>
                 
              </div>
          </center>
              </div>
              
            </div>
           
          </section>
                <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                    <center> <div class="mdl-card__actions">
                            <h3>Distribuidores</h3>
                <a href="javascript:modificar_distribuidor();" class="mdl-button">Modificar</a>
                 <a href="javascript:eliminar_distribuidor();" class="mdl-button">Eliminar</a>
                 <a href="javascript:insertar_distribuidor();" class="mdl-button">Insertar</a>
                 
              </div>
          </center>
              </div>
              
            </div>
           
          </section>
         <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                    <center> <div class="mdl-card__actions">
                            <h3>Agricultura</h3>
                <a href="javascript:modificar_agricultura();" class="mdl-button">Modificar</a>
                 <a href="javascript:eliminar_agricultura();" class="mdl-button">Eliminar</a>
                 <a href="javascript:insertar_agricultura();" class="mdl-button">Insertar</a>
                 
              </div>
          </center>
              </div>
              
            </div>
           
          </section>
         <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                    <center> <div class="mdl-card__actions">
                            <h3>Automoviles</h3>
                <a href="javascript:modificar_automoviles();" class="mdl-button">Modificar</a>
                 <a href="javascript:eliminar_automoviles();" class="mdl-button">Eliminar</a>
                 <a href="javascript:insertar_automoviles();" class="mdl-button">Insertar</a>
                 
              </div>
          </center>
              </div>
              
            </div>
           
          </section>
         <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
             <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                    <center> <div class="mdl-card__actions">
                            <h3>Construcción</h3>
                <a href="javascript:modificar_construccion();" class="mdl-button">Modificar</a>
                 <a href="javascript:eliminar_construccion();" class="mdl-button">Eliminar</a>
                 <a href="javascript:insertar_construccion();" class="mdl-button">Insertar</a>
                 
              </div>
          </center>
              </div>
              
            </div>
           
          </section>
    </div>
     <div id="modificar_empleado" style="display: none;">
         <br>           
         <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="modificar_empleados.do" target="_blank" >
                    <a href="javascript:modificar_empleado2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Modificar Empleado</h5>
                  <h6>Seleccione el empleado a modificar</h6>
                  <div class="caja">
                      <%
                      Empleado2 modempleados = new Empleado2();
                      ResultSet Modempleados = modempleados.getEmpleados2();
                      %>
                      
                      <select name="id-empleado" id="id-empleado">
                          <%while(Modempleados.next()){%>
                          <option value="<%= Modempleados.getString("ID") %>" ><%= Modempleados.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
                 <label>Nuevo Nombre: <input type="text" name="nombre_empleado" id="nombre_empleado" required></label>
                  <br><label>Nuevos Apellidos: <input type="text" name="apellido_empleado" id="apellido_empleado" required></label>
                  <br><label>Nuevo Telefono: <input type="text" name="telefono_empleado" id="telefono_empleado" required></label>
                  <br><label>Nuevo Password: <input type="password" name="pass_empleado" id="pass_empleado" required></label>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-modificar-empleado" id="btn-modificar-empleado" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           </section>
                </div>
<div id="modificar_distribuidor" style="display: none;">
    <br>                
    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="modificar_distribuidores.do" target="_blank" >
                    <a href="javascript:modificar_distribuidor2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Modificar distribuidor</h5>
                  <h6>Seleccione el distribuidor a modificar</h6>
                  <div class="caja">
                      <%
                     AdminDistribuidores moddistri = new AdminDistribuidores();
                      ResultSet Moddistri = moddistri.getDistribuidor2();
                      %>
                      
                      <select name="id-distribuidor" id="id-distribuidor">
                          <%while(Moddistri.next()){%>
                          <option value="<%= Moddistri.getString("ID") %>" ><%= Moddistri.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
                 <label>Nuevo Nombre: <input type="text" name="nombre_distribuidor" id="nombre_distribuidor" required></label>
                  <br><label>Nuevos RFC: <input type="text" name="rfc_distribuidor" id="rfc_distribuidor" required></label>
                  <br><label>Nuevo Telefono: <input type="text" name="telefono_distribuidor" id="telefono_distribuidor" required></label>
                  
              </div>
              <div class="mdl-card__actions">
                  <input type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-modificar-distribuidor" id="btn-modificar-distribuidor" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
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
                  <h5>Modificar productos de agricultura</h5>
                  <h6>Ingrese codigo de barras o el ID del producto modificar</h6>
                  <input type="text" name="id_agricultura" id="id_agricultura" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_agricultura" id="nombre_agricultura" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_agricultura" id="descripcion_agricultura" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_agricultura" id="precio_agricultura" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_agricultura" id="ubicacion_agricultura" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_agricultura" id="palabra_agricultura" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modagri = new AdminDistribuidores();
                      ResultSet Modagri = modagri.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-agricultura" id="id-distribuidor-agricultura">
                          <%while(Modagri.next()){%>
                          <option value="<%= Modagri.getString("ID") %>" ><%= Modagri.getString("Nombre") %></option>
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
                  <h5>Modificar productos de construccion</h5>
                  <h6>Ingrese codigo de barras o el ID del producto modificar</h6>
                  <input type="text" name="id_construccion" id="id_construccion" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_construccion" id="nombre_construccion" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_construccion" id="descripcion_construccion" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_construccion" id="precio_construccion" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_construccion" id="ubicacion_construccion" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_construccion" id="palabra_construccion" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modconstruc = new AdminDistribuidores();
                     ResultSet Modconstruc = modconstruc.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-construccion" id="id-distribuidor-agricultura">
                          <%while(Modconstruc.next()){%>
                          <option value="<%= Modconstruc.getString("ID") %>" ><%= Modconstruc.getString("Nombre") %></option>
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
                  <h5>Modificar productos de automoviles</h5>
                  <h6>Ingrese codigo de barras o el ID del producto modificar</h6>
                  <input type="text" name="id_automovil" id="id_automovil" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_automovil" id="nombre_automovil" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_automovil" id="descripcion_automovil" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_automovil" id="precio_automovil" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_automovil" id="ubicacion_automovil" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_automovil" id="palabra_automovil" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores modauto = new AdminDistribuidores();
                     ResultSet Modauto = modauto.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-automovil" id="id-distribuidor-automovil">
                          <%while(Modauto.next()){%>
                          <option value="<%= Modauto.getString("ID") %>" ><%= Modauto.getString("Nombre") %></option>
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
                   
                       <div id="eliminar_empleado" style="display: none;">
                           <br>
                           <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="eliminar_empleado.do" target="_blank" >
                    <a href="javascript:eliminar_empleado2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Dar de baja empleado</h5>
                  <h6>Ingrese ID del empleado</h6>
                  <input type="text" name="id_empleado" id="id_empleado" required ><br>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-eliminar-empleado" id="btn-eliminar-empleado" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                   
                      <div id="eliminar_agricultura" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
               <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="eliminar_agricultura.do" target="_blank" >
                    <a href="javascript:eliminar_agricultura2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Eliminar producto de agricultura</h5>
                  <h6>Ingrese ID o Código de barras</h6>
                  <input type="text" name="id_agricultura" id="id_agricultura"  required ><br>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-eliminar-agricultura" id="btn-eliminar-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                  
                      <div id="eliminar_automoviles" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
               <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="eliminar_automoviles.do" target="_blank">
                    <a href="javascript:eliminar_automoviles2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Eliminar producto de automoviles</h5>
                  <h6>Ingrese ID o Código de barras</h6>
                  <input type="text" name="id_automoviles" id="id_automoviles"  required ><br>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-eliminar-automoviles" id="btn-eliminar-automoviles" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      
                      <div id="eliminar_construccion" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
               <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="eliminar_construccion.do" target="_blank">
                    <a href="javascript:eliminar_construccion2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Eliminar producto de construccion</h5>
                  <h6>Ingrese ID o Código de barras</h6>
                  <input type="text" name="id_construccion" id="id_construccion"  required ><br>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-eliminar-construccion" id="btn-eliminar-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                    
                      <div id="eliminar_distribuidor" style="display: none;">
                          <br>
                    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
               <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="eliminar_distribuidor.do" target="_blank">
                    <a href="javascript:eliminar_distribuidor2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Eliminar Distribuidor</h5>
                  <p>Nota: Si elimina un distribuidor, elimina todo registro relacionado.</p>
                  <h6>Ingrese ID</h6>
                  <input type="text" name="id_distribuidor" id="id_distribuidor"  required ><br>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-eliminar-distribuidor" id="btn-eliminar-distribuidor" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      
                      <div id="insertar_distribuidor" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form   action="insertar_distribuidor.do" target="_blank" id="form-insertar-distribuidor" >
                    <a href="javascript:insertar_distribuidor2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Insertar distribuidor</h5>
                  <h6>Ingrese el ID del nuevo distribuidor</h6>
                <input type="text" name="id_distribuidor" id="id_distribuidor" required>
                <br><label>Nuevo Nombre: <input type="text" name="nombre_distribuidor" id="nombre_distribuidor" required></label>
                  <br><label>Nuevos RFC: <input type="text" name="rfc_distribuidor" id="rfc_distribuidor" required></label>
                  <br><label>Nuevo Telefono: <input type="text" name="telefono_distribuidor" id="telefono_distribuidor" required></label>
                  
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-insertar-distribuidor" id="btn-insertar-distribuidor" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                    
                       <div id="insertar_empleado" style="display: none;">
                           <br>
                           <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/usuario-hombre-removebg-preview.png" width="100" height="100">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form  action="insertar_empleado.do" target="_blank" >
                    <a href="javascript:insertar_empleado2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Insertar Empleado</h5>
                  <h6>Ingrese nuevo ID</h6>
                 <input type="text" name="id" id="id" required>
                 <br><label>Nuevo Nombre: <input type="text" name="nombre" id="nombre" required></label>
                  <br><label>Nuevos Apellidos: <input type="text" name="apellidos" id="apellidos" required></label>
                  <br><label>Nuevo Telefono: <input type="text" name="telefono" id="telefono" required></label>
                  <br><label>Nuevo Password: <input type="password" name="password" id="password" required></label>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="register-submit" id="register-submit" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                    
                      <div id="insertar_agricultura" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="insertar_agricultura.do" target="_blank" >
                    <a href="javascript:insertar_agricultura2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Insertar producto de agricultura</h5>
                  <h6>Ingrese codigo de barras o el ID del producto</h6>
                  <input type="text" name="id_agricultura" id="id_agricultura" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_agricultura" id="nombre_agricultura" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_agricultura" id="descripcion_agricultura" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_agricultura" id="precio_agricultura" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_agricultura" id="ubicacion_agricultura" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_agricultura" id="palabra_agricultura" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores insertaragri = new AdminDistribuidores();
                      ResultSet Insertaragri = insertaragri.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-agricultura" id="id-distribuidor-agricultura">
                          <%while(Insertaragri.next()){%>
                          <option value="<%= Insertaragri.getString("ID") %>" ><%= Insertaragri.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-insertar-agricultura" id="btn-insertar-agricultura" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      
                       <div id="insertar_automoviles" style="display: none;">
                           <br>
                           <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="insertar_automoviles.do" target="_blank" >
                    <a href="javascript:insertar_automoviles2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Insertar productos de automoviles</h5>
                  <h6>Ingrese codigo de barras o el ID del producto</h6>
                  <input type="text" name="id_automovil" id="id_automovil" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_automovil" id="nombre_automovil" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_automovil" id="descripcion_automovil" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_automovil" id="precio_automovil" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_automovil" id="ubicacion_automovil" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_automovil" id="palabra_automovil" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores insertarauto = new AdminDistribuidores();
                     ResultSet Insertarauto = insertarauto.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-automovil" id="id-distribuidor-automovil">
                          <%while(Insertarauto.next()){%>
                          <option value="<%= Insertarauto.getString("ID") %>" ><%= Insertarauto.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-insertar-automovil" id="btn-insertar-automovil" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
              </div>
                </form>
            </div>
           
          </section>
                    
                </div>
                      
                      <div id="insertar_construccion" style="display: none;">
                          <br>
                          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/paquete-para-la-entrega-removebg-preview.png" width="200" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
                
                <form action="insertar_construccion.do" target="_blank" >
                    <a href="javascript:insertar_construccion2();" style="float: right;">Cerrar</a>
              <div class="mdl-card__supporting-text">
                  <h5>Insertar productos de construccion</h5>
                  <h6>Ingrese codigo de barras o el ID del producto</h6>
                  <input type="text" name="id_construccion" id="id_construccion" placeholder="Codigo de barras o ID" required ><br>
                  <br><label>Nuevo Nombre: <input type="text" name="nombre_construccion" id="nombre_construccion" required></label>
                  <br><label>Nueva Descripcion: <input type="text" name="descripcion_construccion" id="descripcion_construccion" required></label>
                  <br><label>Nuevo Precio: <input type="text" name="precio_construccion" id="precio_construccion" required></label>
                  <br><label>Nueva Ubicación: <input type="text" name="ubicacion_construccion" id="ubicacion_construccion" required></label>
                  <br><label>Nueva Palabra Clave <input type="text" name="palabra_construccion" id="palabra_construccion" required></label>
                  <center><label>Seleccione el distribuidor correspondiente</label></center>
                  <div class="caja">
                      <%
                     AdminDistribuidores insertarconstruc = new AdminDistribuidores();
                     ResultSet Insertarconstruc = insertarconstruc.getDistribuidor2();
                      %>
                      <select name="id-distribuidor-construccion" id="id-distribuidor-agricultura">
                          <%while(Insertarconstruc.next()){%>
                          <option value="<%= Insertarconstruc.getString("ID") %>" ><%= Insertarconstruc.getString("Nombre") %></option>
                          <%}%>
                      </select>
                  </div>
              </div>
              <div class="mdl-card__actions">
                  <input  type="submit" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" name="btn-insertar-construccion" id="btn-insertar-construccion" value="Enviar">  <input type="reset" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:80px; height:25px;" value="Reset"> <input type="button" style="font-size:15px; font-family:Verdana,Helvetica;font-weight:bold;color:white; background:#638cb5; border:5px; width:200px; height:25px;" onclick="window.location.reload()" value="Actualizar Pagina">
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
