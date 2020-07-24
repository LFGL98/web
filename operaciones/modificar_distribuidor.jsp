
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String mensaje = (String) request.getSession().getAttribute("modificar");
%>
<!doctype html>

<html lang="en">
  <head>
     <script language="javascript" type="text/javascript"> 
function cerrar() { 
   window.open('','_parent',''); 
   window.close(); 
} 
</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Modificar</title>


  <link rel="shortcut icon" href="images/logotipo-refaccionaria-circuito-removebg-preview.png">

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
            <h5>RESULTADO DE LA OPERACIÓN</h5>
        
        </div>
      </header>
      <main class="mdl-layout__content">
        <div class="mdl-layout__tab-panel is-active" id="overview">
         
        
        
         
       <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="css/distribuidor-removebg-preview.png" width="400" height="200">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text">
                  <center><h5><%= mensaje%></h5>
                  </center>
              </div>
              
            </div>
           
          </section>
          
        </div>
        
      
      </main>
    </div>
    <a href="javascript:cerrar();" id="view-source" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--accent mdl-color-text--accent-contrast">Regresar</a>
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  </body>
</html>
