<%-- 
    Document   : censo_vista
    Created on : 27-dic-2017, 9:19:25
    Author     : Dani
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Votante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Consultar censo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css"/>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/Votaciones/index.jsp">Votaciones</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/Votaciones/Vistas/votar_vista.jsp">Votar</a></li>
            <li class="active"><a href="/Votaciones/Vistas/censo_vista.jsp">Consultar censo</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li> <a href="/Votaciones/Vistas/altaVotante_vista.jsp"><span class="glyphicon glyphicon-user"></span> Registrar</a></li>
            <li><a href="/Votaciones/Vistas/bajaVotante_vista.jsp"><span id="iconUser" class="glyphicon glyphicon-user"></span> Darse de baja</a></li>
        </ul>
    </div>
</nav>
</head>
<body>
    <% ArrayList<Votante> votantes = (ArrayList<Votante>) session.getAttribute("votantes");
    session.invalidate(); %>
    <table class="tablaCenso">
        <tr><td><img src="imagenes/pp.png" width="150" height="150" alt="pp"/></td><td><img src="imagenes/psoe.png" width="150" height="150" alt="psoe"/></td><td><img src="imagenes/podemos.jpg" width="150" height="150" alt="podemos"/></td><td><img src="imagenes/ciudadanos.jpg" width="150" height="150" alt="ciudadanos"/></td></tr>
        <tr><td><b>Votos:</b></td><td><b>Votos:</b></td><td><b>Votos:</b></td><td><b>Votos:</b></td></tr>
    </table>
    <table class="tablaCenso">
        <tr><th>NIF</th><th>Nombre</th><th>Apellidos</th><th>Domicilio</th><th>Fecha de nacimiento</th><th>Voto</th></tr>
                <% for (int i = 0; i < votantes.size(); i++) {
                                    %> <tr> <td><% out.print(votantes.get(i).getNif()); %></td></tr>
        <%  }%>
    </table>


</body>

