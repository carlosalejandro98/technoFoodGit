/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dto.Carrito;
import dto.Menu;
import dto.Mesa;
import dto.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Carlitos
 */
public class servletBorrarItem extends HttpServlet {

    //borrarItem
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int idmenu = Integer.parseInt(request.getParameter("idmenu"));

        HttpSession sesion = request.getSession(true);
        ArrayList<Carrito> carritos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

        if (carritos != null) {
            for (Carrito c : carritos) {
                if (c.getIdProducto() == idmenu) {
                    carritos.remove(c);
                    break;
                }
            }
        }
        double total = 0;
        controlador.ControladorProducto cm = new ControladorProducto();
        for (Carrito c : carritos) {
            Producto menu = cm.getProductoProducto(c.getIdProducto());
            total += c.getCantidad() * menu.getPrecio();
        }

        response.getWriter().print(Math.round(total * 100) / 100);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
