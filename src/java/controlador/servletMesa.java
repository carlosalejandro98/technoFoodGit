/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.MesaDAO;
import dao.ReservarDAO;
import dto.Mesa;
import dto.Reserva;
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
public class servletMesa extends HttpServlet {

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

        MesaDAO dao = new MesaDAO();
        Mesa m = new Mesa();
        List<Mesa> mesa;

        mesa = dao.readAll();
        request.setAttribute("listaMesa", mesa);
        request.setAttribute("estado", m.getEstado_mesa());

        request.getRequestDispatcher("mesa.jsp").forward(request, response);

        String opciones = request.getParameter("btnAccion");
        // Preguntamos por el contenido del boton
        if (opciones.equals("Listar")) {
            listar(request, response);
        }
        if (opciones.equals("Reservar")) {
            reservar(request, response);
        }
        if (opciones.equals("Liberar")) {
            liberar(request, response);
        }

    }

    protected void listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MesaDAO dao = new MesaDAO();
        Mesa m = new Mesa();
        List<Mesa> mesa;

        mesa = dao.readAll();
        request.setAttribute("listaMesa", mesa);
        request.setAttribute("estado", m.getEstado_mesa());

        request.getRequestDispatcher("mesa.jsp").forward(request, response);

    }

    protected void reservar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int mesaid = Integer.parseInt(request.getParameter("txtIdMesa"));

            System.out.println(mesaid);

            Mesa mesa = new Mesa(mesaid);
            MesaDAO dao = new MesaDAO();

            if (dao.update(mesa)) {
                request.setAttribute("msjOK", "Mesa Reservada Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al Reservar Mesa");
            }
        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            response.sendRedirect("mesa.jsp");
        }

    }

    protected void liberar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int mesaid = Integer.parseInt(request.getParameter("txtIdMesa"));

            System.out.println(mesaid);

            Mesa mesa = new Mesa(mesaid);
            MesaDAO dao = new MesaDAO();

            if (dao.updateOcupado(mesa)) {
                request.setAttribute("msjOK", "Mesa Liberada Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al Reservar Mesa");
            }
        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            response.sendRedirect("mesa.jsp");
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
