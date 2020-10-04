<%-- 
    Document   : ejtut6
    Created on : 03-10-2020, 10:01:18 PM
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
        <h1>Enviar datos de persona</h1>
        <form action="datospersona" method="post">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre"></td>
                </tr>
                <tr>
                    <td>Sexo:</td>
                    <td><input type="radio" name="sexo" value="Masculino">Hombre</td>
                    <td><input type="radio" name="sexo" value="Femenino">Mujer</td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td><input type="number" name="telefono"></td>
                </tr>
                <tr>
                    <td>Correo:</td>
                    <td><input type="mail" name="correo"></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="procesar" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
