<%-- 
    Document   : editar
    Created on : 03-10-2020, 11:33:00 PM
    Author     : wwwsd
--%>

<%@page import="com.emergentes.modelo.Actividad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Actividad item = (Actividad) request.getAttribute("miAct");
    boolean nuevo = true;
    if(item.getId()>0){
        nuevo = false;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de la agenda personal</h1>
        <form action="controlagenda" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="number" name="id" value="<%=item.getId()%>"></td>
                </tr>
                <tr>
                    <td>Hora</td>
                    <td><input type="text" name="hora" value="<%=item.getHora()%>"></td>
                </tr>
                <tr>
                    <td>Actividad</td>
                    <td><input type="text" name="actividad" value="<%=item.getActividad()%>"></td>
                </tr>
                <tr>
                    <td>Cumplido</td>
                    <td><input type="text" name="cumplido" value="<%=item.getCumplido()%>"></td>

                </tr>
                <tr>
                <input type="hidden" name="nuevo" value="<%=nuevo%>">
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
