/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.ProductoDAO;
import dto.Producto;

/**
 *
 * @author Carlitos
 */
public class ControladorProducto {

    public String getProducto() {
        ProductoDAO pd = new ProductoDAO();
        String htmlcode = "";
        for (Producto producto : pd.readAll()) {
            htmlcode += "  <div class=\"col-sm-4\">\n"
                    + "                                <div class=\"product-image-wrapper\">\n"
                    + "                                    <div class=\"single-products\">\n"
                    + "                                        <div class=\"productinfo text-center\">\n"
                    + "                                            <img src=\"/technoFood/fotos/" + producto.getFoto() + "\" alt=\"\" />\n"
                    + "                                            <h2>$" + producto.getPrecio() + "</h2>\n"
                    + "                                            <p>" + producto.getNombre() + "</p>\n"
                    + "                                            <a href=\"product-details.jsp?id=" + producto.getId_producto() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"product-overlay\">\n"
                    + "                                            <div class=\"overlay-content\">\n"
                    + "                                                <h2>$" + producto.getPrecio() + "</h2>\n"
                    + "                                                <p>" + producto.getNombre() + "</p>\n"
                    + "                                                <a href=\"product-details.jsp?id=" + producto.getId_producto() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
        }
        return htmlcode;
    }

    public Producto getProductoProducto(int id) {
        return new ProductoDAO().getProducto(id);
    }
}
