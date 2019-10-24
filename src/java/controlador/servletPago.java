/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DetalleDAO;
import dao.MesaDAO;
import dao.PedidoDAO;
import dto.Carrito;
import dto.DetallePedido;
import dto.Mesa;
import dto.Pedido;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
public class servletPago extends HttpServlet {

    //pagar
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
        // Preguntamos por el contenido del boton
        if (opciones.equals("Agregar")) {
            agregar(request, response);
        }
        if (opciones.equals("Generar")) {
            pedido(request, response);
        }
        
    }
    
    protected void agregar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            HttpSession sesion = request.getSession(true);
            ArrayList<Carrito> carritos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
            int contador = 1;
            
            MesaDAO daoMesa = new MesaDAO();
            DetalleDAO dao = new DetalleDAO();
            for (Carrito carrito : carritos) {
                
                String c = "txtCantidad" + String.valueOf(contador);
                String id = "txtId" + String.valueOf(contador);
                int cantidad = Integer.parseInt(request.getParameter(c));
                int producto = Integer.parseInt(request.getParameter(id));
                int mesa = Integer.parseInt(request.getParameter("cboMesa"));
                int estado = Integer.parseInt(request.getParameter("txtEstado"));
                int idpedido = Integer.parseInt(request.getParameter("txtPedido"));
                
                
                DetallePedido detalle = new DetallePedido(cantidad, producto, mesa, estado, idpedido);
                
                
                
                if (dao.create(detalle)) {
                    
                    Mesa m = new Mesa(mesa);
                    daoMesa.update(m);
                    
                    request.setAttribute("msjOK", "Pedido Generado Correctamente");
                    contador++;
                } else {
                    request.setAttribute("msjNO", "error");
                }
            }
            
        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        }
        
    }
    
    protected void pedido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            String fechaPedido = request.getParameter("txtFecha");
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date formato = f.parse(fechaPedido);
            java.sql.Date fecha = new java.sql.Date(formato.getDate());
            
            int total = Integer.parseInt(request.getParameter("txtTotal"));
            
            int usuario = Integer.parseInt(request.getParameter("txtUsuario"));
            
            Pedido pedido = new Pedido(fecha, total, usuario);
            DetalleDAO dao = new DetalleDAO();
            
            if (dao.crearPedido(pedido)) {
                request.setAttribute("msjOK", "Pedido Registrado Correctamente");
            } else {
                request.setAttribute("msjNO", "Error al generar Pedido");
            }
            
        } catch (Exception e) {
            request.setAttribute("msjNO", "Error: " + e.getMessage());
        } finally {
            request.getRequestDispatcher("cart.jsp").forward(request, response);
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
