<%-- 
    Document   : altaVotante_vista
    Created on : 05-dic-2017, 13:40:31
    Author     : dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
        <meta charset="utf-8">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/Votaciones/index.jsp">Votaciones</a>
            </div>
            <ul class="nav navbar-nav">
               <li><a href="/Votaciones/Vistas/votar_vista.jsp">Votar</a></li>
                <li><a href="/Votaciones/Vistas/censo_vista.jsp">Consultar censo</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"> <a href="/Votaciones/Vistas/altaVotante_vista.jsp"><span class="glyphicon glyphicon-user"></span> Registrar</a></li>
                <li><a href="/Votaciones/Vistas/altaVotante_vista.jsp"><span id="iconUser" class="glyphicon glyphicon-user"></span> Darse de baja</a></li>
            </ul>
        </div>
    </nav>
</head>
<body>
    <div class="registroForm">
        <h2>Rellena los campos</h2>
        <form action="/Votaciones/Controlador_altaVotante">
            <div class="form-group">
                <label for="text">NIF</label>
                <input type="text" class="form-control" id="nif" placeholder="Introduce tu NIF" name="nif">
            </div>
            <div class="form-group">
                <label for="text">Nombre</label>
                <input type="text" class="form-control" id="nombre" placeholder="Introduce tu nombre" name="nombre">
            </div>
            <div class="form-group">
                <label for="text">Apellidos</label>
                <input type="text" class="form-control" id="apellidos" placeholder="Introduce tus apellidos" name="apellidos">
            </div>
            <div class="form-group">
                <label for="text">Domicilio</label>
                <input type="text" class="form-control" id="Domicilio" placeholder="Introduce tu domicilio" name="Domicilio">
            </div>
            <div class="form-group">
                <label for="date">Fecha de nacimiento</label>
                <input type="date" class="form-control" id="fecha_nac"  name="fecha_nac">
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="passwd" placeholder="Introduce una contraseña" name="passwd">
            </div>
            <button type="submit" class="btn btn-success">Aceptar</button>
        </form>
    </div>
</body>
</html>
