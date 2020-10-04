<%-- 
    Document   : index
    Created on : 29-09-2020, 07:54:09 PM
    Author     : wwwsd
--%>

<%@page import="com.emergentes.modelo.Actividad"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listact") == null){
        ArrayList<Actividad> listaux = new ArrayList<Actividad>();
        session.setAttribute("listact",listaux);
    }
    ArrayList<Actividad> lista = (ArrayList<Actividad>)session.getAttribute("listact");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de actividades</h1>
        <a href="controlagenda?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>HORA</th>
                <th>ACTIVIDAD</th>
                <th>CUMPLIDO</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for(Actividad item: lista){
            %>
            
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getHora()%></td>
                <td><%=item.getActividad()%></td>
                <td><%=item.getCumplido()%></td>
                <td>
                    <a href="controlagenda?op=2&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="controlagenda?op=3&id=<%=item.getId()%>" onclick="return confirm('esta seguro')">borrar</a>
                </td>
            </tr>
            <%
                }
            }
            %>
        </table>
    </body>
</html>
