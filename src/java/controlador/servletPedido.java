/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.PedidoDAO;
import dto.DetallePedido;
import dto.Pedido;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlitos
 */
public class servletPedido extends HttpServlet {

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

        PedidoDAO dao = new PedidoDAO();
        List<DetallePedido> detalle;

        detalle = dao.readAll();
        //PLATO
        // Creamos una variable llamada listaMesa con el contenido de readAll(todos los datos de la BD)
        request.setAttribute("listaPedido", detalle);

        // Envias la variable a la vista mesa.jsp
        request.getRequestDispatcher("cocina.jsp").forward(request, response);

        String opciones = request.getParameter("btnAccion");

        if (opciones.equals("Ingresado")) {
            actualizarIngresar(request, response);
        }

        if (opciones.equals("En Proceso")) {
            actualizarEnProceso(request, response);
        }

    }


    protected void actualizarIngresar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int id_pedido = Integer.parseInt(request.getParameter("txtId"));

            System.out.println(id_pedido);

            Pedido pedido = new Pedido(id_pedido);
            PedidoDAO dao = new PedidoDAO();

            if (dao.actualizarIngresado(pedido)) {
                request.setAttribute("msjOK", "Pedido Actualizado Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al actualizar Pedido");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            response.sendRedirect("cocina.jsp");
        }

    }

    protected void actualizarEnProceso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int id_pedido = Integer.parseInt(request.getParameter("txtId"));

            Pedido pedido = new Pedido(id_pedido);
            PedidoDAO dao = new PedidoDAO();

            if (dao.actualizarEnProceso(pedido)) {
                request.setAttribute("msjOK", "Pedido Actualizado Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al actualizar Pedido");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            response.sendRedirect("cocina.jsp");
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
