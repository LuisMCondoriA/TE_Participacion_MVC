<%-- 
    Document   : mostrarper
    Created on : 03-10-2020, 10:45:18 PM
    Author     : wwwsd
--%>

<%@page import="com.emergentes.modelo.datosper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    datosper miobj = (datosper)request.getAttribute("miobj");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la persona</h1>
        <p>Los datos de la persona son:</p>
        <p>Nombre: <%= miobj.getNombre() %></p>
        <p>Sexo: <%= miobj.getSexo() %></p>
        <p>Telefono: <%= miobj.getTelefono() %></p>
        <p>Correo: <%= miobj.getCorreo() %></p>
        <br>
        <a href="index.jsp">Volver a index</a>
    </body>
</html>
