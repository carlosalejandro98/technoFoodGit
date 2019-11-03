/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ReservarDAO;
import dto.Reserva;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlitos
 */
public class servletReserva extends HttpServlet {

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

        request.setCharacterEncoding("UTF-8");

        String opciones = request.getParameter("btnAccion");
        // Preguntamos por el contenido del boton
        if (opciones.equals("Reservar")) {
            reservar(request, response);
        }
        if (opciones.equals("Cancelar")) {
            cancelar(request, response);
        }
    }

    protected void reservar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String rut = request.getParameter("txtRut");
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
            String correo = request.getParameter("txtCorreo");
            int asiento = Integer.parseInt(request.getParameter("txtAsientos"));

            String fechaReserva = request.getParameter("txtFecha");
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date formato = f.parse(fechaReserva);
            //Date formato = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(fechaReserva);
            //java.sql.Date fecha=java.sql.Date.valueOf(fechaReserva);
            java.sql.Date fecha = new java.sql.Date(formato.getTime());

            int mesa = Integer.parseInt(request.getParameter("cboMesa"));

            Reserva reserva = new Reserva(rut, nombre, apellido, telefono, correo, asiento, fecha, mesa);
            ReservarDAO dao = new ReservarDAO();

            if (dao.create(reserva)) {
                request.setAttribute("msjOK", "Reserva Creada");
            } else {
                request.setAttribute("msjNO", "Error");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("reservar.jsp").forward(request, response);
        }

    }

    protected void cancelar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Recibimos los datos del formulario
            String rut = request.getParameter("txtId");
            // Llamamos al DAO para conectarnos a la BD
            Reserva reserva = new Reserva(rut);
            ReservarDAO dao = new ReservarDAO();

            if (dao.delete(reserva)) {
                request.setAttribute("msjOK", "Reserva Cancelada");
            } else {
                request.setAttribute("msjNO", "Error");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("cancelarReserva.jsp").forward(request, response);
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
