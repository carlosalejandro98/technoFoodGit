/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.DetalleDAO;
import dto.DetallePedido;

/**
 *
 * @author Carlitos
 */
public class ControladorDetallePedido {
    
      public String getProducto() {
        DetalleDAO dd = new DetalleDAO();
        String htmlcode = "";
        for (DetallePedido detalle : dd.readAll()) {
            htmlcode += "  <div class=\"col-sm-4\">\n"
                    + "                                <div class=\"product-image-wrapper\">\n"
                    + "                                    <div class=\"single-products\">\n"
                    + "                                        <div class=\"productinfo text-center\">\n"
                    + "                                            <a href=\"product-details.jsp?id=" + detalle.getId_detalle_venta()+ "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
        }
        return htmlcode;
    }

}
