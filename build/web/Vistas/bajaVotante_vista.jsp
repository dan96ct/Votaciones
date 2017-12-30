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
                <li><a href="../Controlador_mostrarPartidos">Votar</a></li>
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

    <div class="registro_baja">
        <h2>Introduce tus datos</h2>
        <form action="../Controlador_bajaVotante">    
            <div class="form-group">
                <label for="text">NIF</label>
                <input type="text" class="form-control" id="nif" placeholder="Introduce tu NIF" name="nif" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="passwd" placeholder="Introduce una contraseña" name="passwd" required>
            </div>
            <button type="submit" class="btn btn-success">Votar</button>

        </form>
    </div>
</body>
</html>
