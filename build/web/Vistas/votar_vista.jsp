<%-- 
    Document   : votar_vista
    Created on : 25-dic-2017, 18:27:22
    Author     : dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Votar</title>
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
               <li class="active"><a href="votar_vista.jsp">Votar</a></li>
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
    <h2>Seleccione el partido</h2>
    <form action="/Votaciones/Controlador_votar">
        <div class="partidos_caja">
            <div id="partido1" class="partido">
                <img class="imagenPartido" src="imagenes/pp.png"alt="pp"/>
                <p><input type="radio" name="partidos" value="PP"/> Partido Popular</p>
            </div>
            <div id="partido2" class="partido">
                <img class="imagenPartido" src="imagenes/psoe.png"  alt="psoe"/>
                <p><input type="radio" name="partidos"value="PSOE"/> Partido socialista</p>
            </div>
            <div id="partido3" class="partido">
                <img  class="imagenPartido" src="imagenes/podemos.jpg"  alt="podemos"/>
                <p><input type="radio" name="partidos" value="podemos"/> Podemos</p>
            </div>
            <div id="partido4" class="partido">
                <img class="imagenPartido" src="imagenes/ciudadanos.jpg" alt="ciudadanos"/>
                <p><input type="radio" name="partidos" value="ciudadanos" /> Ciudadanos</p>
            </div>  
           
            </div>
        <div class="registro_voto">
            <div class="form-group">
                <label for="text">NIF</label>
                <input type="text" class="form-control" id="nif" placeholder="Introduce tu NIF" name="nif">
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="passwd" placeholder="Introduce una contraseña" name="passwd">
            </div>
            <button type="submit" class="btn btn-success">Votar</button>
        </div>
    </form>

</body>
</html>
