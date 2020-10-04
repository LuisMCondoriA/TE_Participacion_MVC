<%-- 
    Document   : ejtut62
    Created on : 03-10-2020, 10:20:21 PM
    Author     : wwwsd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingresar datos de un producto</h1>
        <form action="datosproducto" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="number" name="id" value="0"></td>
                </tr>
                <tr>
                    <td>Descripcion:</td>
                    <td><input type="text" name="descripcion"></td>
                </tr>
                <tr>
                    <td>Categoria:</td>
                    <td><input type="text" name="categoria"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="procesar" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
