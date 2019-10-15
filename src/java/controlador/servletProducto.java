/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
import dto.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlitos
 */
public class servletProducto extends HttpServlet {

    //producto
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

        String opciones = request.getParameter("btnAccion");

        if (opciones.equals("Agregar")) {
            agregar(request, response);
        }

    }

    protected void agregar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String nombre = request.getParameter("txtNombreProducto");
            String descripcion = request.getParameter("txtDescripcion");
            int precio = Integer.parseInt(request.getParameter("txtPrecio"));
            String foto = request.getParameter("txtFoto");
            int tipo = Integer.parseInt(request.getParameter("cboTipoProducto"));
            int insumo = Integer.parseInt(request.getParameter("cboInsumo"));
            int receta = Integer.parseInt(request.getParameter("cboReceta"));

            Producto producto = new Producto(nombre, descripcion, precio, foto, tipo, insumo, receta);
            ProductoDAO dao = new ProductoDAO();

            if (dao.create(producto)) {
                request.setAttribute("msjOK", "Producto Agregado Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al Ingresar Producto");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("agregarProducto.jsp").forward(request, response);
        }

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
