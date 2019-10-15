package controlador;

import dao.MenuDAO;
import dto.Menu;

public class ControladorMenu {

    public String getMenu() {
        MenuDAO md = new MenuDAO();
        String htmlcode = "";
        for (Menu menu : md.readAll()) {
            htmlcode += "  <div class=\"col-sm-4\">\n"
                    + "                                <div class=\"product-image-wrapper\">\n"
                    + "                                    <div class=\"single-products\">\n"
                    + "                                        <div class=\"productinfo text-center\">\n"
                    + "                                            <img src=\"/technoFood/fotos/" + menu.getFoto() + "\" alt=\"\" />\n"
                    + "                                            <h2>$" + menu.getPrecio() + "</h2>\n"
                    + "                                            <p>" + menu.getMenu() + "</p>\n"
                    + "                                            <a href=\"product-details.jsp?id=" + menu.getId_menu() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"product-overlay\">\n"
                    + "                                            <div class=\"overlay-content\">\n"
                    + "                                                <h2>$" + menu.getPrecio() + "</h2>\n"
                    + "                                                <p>" + menu.getMenu() + "</p>\n"
                    + "                                                <a href=\"product-details.jsp?id=" + menu.getId_menu() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalles</a>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>";
        }
        return htmlcode;
    }

    public Menu getProductoMenu(int id) {
        return new MenuDAO().getMenu(id);
    }
}
