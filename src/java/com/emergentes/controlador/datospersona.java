/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.controlador;

import com.emergentes.modelo.datosper;
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
@WebServlet(name = "datospersona", urlPatterns = {"/datospersona"})
public class datospersona extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String nombre = request.getParameter("nombre");
    String sexo = request.getParameter("sexo");
    int telefono = Integer.parseInt(request.getParameter("telefono"));
    String correo = request.getParameter("correo");       
    datosper obj = new datosper();
    obj.setNombre(nombre);
    obj.setSexo(sexo);
    obj.setTelefono(telefono);
    obj.setCorreo(correo);
    
    request.setAttribute("miobj", obj);
    request.getRequestDispatcher("mostrarper.jsp").forward(request, response);
    
}



}
