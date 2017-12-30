<%-- 
    Document   : errorRegistroVotante
    Created on : 30-dic-2017, 11:33:19
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
        <meta charset="utf-8">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="../index.jsp">Votaciones</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="../Controlador_mostrarPartidos">Votar</a></li>
                <li><a href="../Controlador_censo">Consultar censo</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li> <a href="altaVotante_vista.jsp"><span class="glyphicon glyphicon-user"></span> Registrar</a></li>
                <li><a href="bajaVotante_vista.jsp"><span id="iconUser" class="glyphicon glyphicon-user"></span> Darse de baja</a></li>
            </ul>
        </div>
    </nav>
</head>
    <body>
        <div style="margin: 0 auto; width:50%; " class="alert alert-danger">
        <% String mensaje= session.getAttribute("error").toString();
        session.invalidate(); %>
        <strong>¡Ups!</strong> <% out.print(mensaje); %>
        </div>
    </body>
</html>
