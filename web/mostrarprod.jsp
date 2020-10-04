<%-- 
    Document   : mostrarprod
    Created on : 03-10-2020, 11:01:44 PM
    Author     : wwwsd
--%>

<%@page import="com.emergentes.modelo.datosprod"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        datosprod miobj = (datosprod)request.getAttribute("miobj");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del producto</h1>
        <p>Los datos del producto son:</p>
        <p>ID: <%= miobj.getId() %></p>
        <p>DESCRIPCION: <%= miobj.getDescripcion() %></p>
        <p>CATEGORIA: <%= miobj.getCategoria() %></p>
        <br>
        <a href="index.jsp">Volver a index</a>
    </body>
</html>
