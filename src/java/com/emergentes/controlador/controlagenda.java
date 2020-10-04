/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.controlador;

import com.emergentes.modelo.Actividad;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author wwwsd
 */
@WebServlet(name = "controlagenda", urlPatterns = {"/controlagenda"})
public class controlagenda extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
    int op = Integer.parseInt(request.getParameter("op"));
    int id,pos;
    
    HttpSession ses = request.getSession();
    ArrayList<Actividad> lista = (ArrayList<Actividad>)ses.getAttribute("listact");
    //nuevo
    if(op == 1){
        Actividad p = new Actividad();
        request.setAttribute("miAct", p);
        request.getRequestDispatcher("editar.jsp").forward(request, response);
    }
    //editar
    if(op == 2){
        id=Integer.parseInt(request.getParameter("id"));
        pos=buscarIndice(request,id);
        
        Actividad p1=lista.get(pos);
        
        request.setAttribute("miAct", p1);
        request.getRequestDispatcher("editar.jsp").forward(request, response);
    }
    
    //eliminar
    if(op==3){
        id=Integer.parseInt(request.getParameter("id"));
        pos=buscarIndice(request,id);
        lista.remove(pos);
        ses.setAttribute("listact",lista);
        response.sendRedirect("ejtut8.jsp");
    }
    
}   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
   int id = Integer.parseInt(request.getParameter("id"));
   String hora = request.getParameter("hora");
   String actividad = request.getParameter("actividad");
   String cumplido = request.getParameter("cumplido");
   String nuevo = request.getParameter("nuevo");
   int pos;
   Actividad acti = new Actividad();
   
   acti.setId(id);
   acti.setHora(hora);
   acti.setActividad(actividad);
   acti.setCumplido(cumplido);
   
   HttpSession ses = request.getSession();
   ArrayList<Actividad> lista = (ArrayList<Actividad>)ses.getAttribute("listact");
   
   
   if(nuevo.equals("true")){
       lista.add(acti);
   }
   else{
       //editar
       // buscar el elemento en la coleccion
       pos = buscarIndice(request,id);
       // reemplazar
       lista.set(pos,acti);
       
   }
   response.sendRedirect("ejtut8.jsp");
   
}      
    private int buscarIndice(HttpServletRequest request, int id)
    {
        HttpSession ses = request.getSession();
        ArrayList<Actividad> lista = (ArrayList<Actividad>)ses.getAttribute("listact");
        int i=0;
        if (lista.size()>0){
            while(i<lista.size()){
                if(lista.get(i).getId()==id){
                    break;
                }
                else i++;
            }
        }
        return i;
    }
}
