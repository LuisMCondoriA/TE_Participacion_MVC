/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.controlador;

import com.emergentes.modelo.datosprod;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wwwsd
 */
@WebServlet(name = "datosproducto", urlPatterns = {"/datosproducto"})
public class datosproducto extends HttpServlet {

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    int id =Integer.parseInt(request.getParameter("id"));
    String descripcion = request.getParameter("descripcion");
    String categoria = request.getParameter("categoria");    
    datosprod obj = new datosprod();
    obj.setId(id);
    obj.setDescripcion(descripcion);
    obj.setCategoria(categoria);
    
    request.setAttribute("miobj", obj);
    request.getRequestDispatcher("mostrarprod.jsp").forward(request, response);
    
}

}
