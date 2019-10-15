/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.RecetaDAO;
import dto.Receta;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Carlitos
 */
public class servletRecetas extends HttpServlet {

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
        if (opciones.equals("Agregar")) {
            agregar(request, response);
        }
        if (opciones.equals("Actualizar")) {
            listar(request, response);
        }
    }

    protected void agregar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String foto = request.getParameter("txtFoto");
            String nombreReceta = request.getParameter("txtNombreReceta");
            String autor = request.getParameter("txtAutor");

            String fechaCreacion = request.getParameter("txtFecha");
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date formato = f.parse(fechaCreacion);
            //Date formato = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(fechaReserva);
            // comentado java.sql.Date fecha=java.sql.Date.valueOf(fechaReserva);
            java.sql.Date fecha = new java.sql.Date(formato.getDate());

            String ingrediente = request.getParameter("txtIngredientes");
            String descripcion = request.getParameter("txtDescripcion");

            System.out.println(foto);
            System.out.println(nombreReceta);
            System.out.println(autor);
            System.out.println(fecha);
            System.out.println(ingrediente);
            System.out.println(descripcion);

            Receta receta = new Receta(foto, nombreReceta, autor, fecha, ingrediente, descripcion);
            RecetaDAO dao = new RecetaDAO();

            if (dao.create(receta)) {
                request.setAttribute("msjOK", "Receta Ingresada Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al Ingresar Receta");
            }

        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("receta.jsp").forward(request, response);
        }
    }

    protected void listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RecetaDAO dao = new RecetaDAO();
        List<Receta> receta;

        receta = dao.listar();
        // Creamos una variable llamada listaMesa con el contenido de readAll(todos los datos de la BD)
        request.setAttribute("listaRecetas", receta);
        // Envias la variable a la vista mesa.jsp
        request.getRequestDispatcher("verRecetas.jsp").forward(request, response);

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
