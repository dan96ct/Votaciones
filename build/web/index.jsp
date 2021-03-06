<%-- 
    Document   : index
    Created on : 03-dic-2017, 11:51:08
    Author     : dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../../Proyecto_autobuses/web/Vistas/js/JavaScript.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Votaciones</title>
        <link href="Vistas/css/css.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Votaciones</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="Controlador_mostrarPartidos">Votar</a></li>
                <li><a href="Controlador_censo">Consultar censo</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li> <a href="Vistas/altaVotante_vista.jsp"><span class="glyphicon glyphicon-user"></span> Registrar</a></li>
                <li><a href="Vistas/bajaVotante_vista.jsp"><span id="iconUser" class="glyphicon glyphicon-user"></span> Darse de baja</a></li>
            </ul>
        </div>
    </nav>
</head>
<body>
    <div id="titulo">
    <h1 class="titulo_inicio">Votaciones generales</h1>
    <img width="400px" height="200px" src="Vistas/imagenes/Logo.jpg" alt=""/>
    </div>

</body>
</html>
