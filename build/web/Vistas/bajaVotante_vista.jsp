<%-- 
    Document   : bajaVotante_vista
    Created on : 27-dic-2017, 9:30:48
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Baja</title>
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
                <a class="navbar-brand" href="../index.jsp">Votaciones</a>
            </div>
            <ul class="nav navbar-nav">
               <li><a href="votar_vista.jsp">Votar</a></li>
                <li><a href="../Controlador_censo">Consultar censo</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li> <a href="altaVotante_vista.jsp"><span class="glyphicon glyphicon-user"></span> Registrar</a></li>
                <li class="active"><a href="bajaVotante_vista.jsp"><span id="iconUser" class="glyphicon glyphicon-user"></span> Darse de baja</a></li>
            </ul>
        </div>
    </nav>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
