<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="dto.Producto"%>
<%@page import="controlador.ControladorProducto"%>
<%@page import="dto.Carrito"%>
<%@page import="java.util.ArrayList"%>
<%

    HttpSession sesion = request.getSession(true);
    ArrayList<Carrito> carritos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");


%>



<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>TechnoFood - Carrito</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/mainCarrito.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="img/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
<style type="text/css">* {cursor: url(http://cur.cursors-4u.net/cursors/cur-1/cur11.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2005/05/12/cur11.html" target="_blank" title="Watermelon"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Watermelon" style="position:absolute; top: 0px; right: 0px;" /></a>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("sesion") == null) {
                response.sendRedirect("404.jsp");
            }
        %>

        <%
            Date date = new Date();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println("Fecha: " + dateFormat.format(date));
        %>

        <sql:setDataSource var="dataSource" driver="oracle.jdbc.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="technoFood" password="admin"></sql:setDataSource>

        <sql:query dataSource="${dataSource}" var="mesa">
            SELECT id_mesa FROM mesa WHERE estado = 'Disponible'
        </sql:query>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                    <li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                    <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="shop.jsp"><img src="img/technofood.svg" style="width: 100px; height: 100px;" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <h4><a href="javascript:window.history.go(-2);">Seguir Comprando</a></h4>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

        <form action="pagar" method="POST">
            <section id="cart_items">
                <div class="container">

                    <div class="table-responsive cart_info" id="cart-container">
                        <table class="table table-condensed" id="shop-table">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Producto</td>
                                    <td class="description"></td>
                                    <td class="price">Precio</td>
                                    <td class="quantity">Cantidad</td>
                                    <td class="total">Total</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>


                                <%                                ControladorProducto cm = new ControladorProducto();
                                    double total = 0;
                                    if (carritos != null) {
                                        int x = 0;
                                        for (Carrito c : carritos) {
                                            Producto producto = cm.getProductoProducto(c.getIdProducto());
                                            total += c.getCantidad() * producto.getPrecio();
                                            x++;

                                %>

                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img src="/technoFood/fotos/<%= producto.getFoto()%>" alt="" style="width: 100px;height: 100px;"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href=""></a></h4>
                                    </td>
                                    <td class="cart_price">
                                        <p>$<%= producto.getPrecio()%></p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <input class="cart_quantity_input" type="text" name="txtCantidad<%=x%>" value="<%=c.getCantidad()%>" autocomplete="off" size="2" >
                                            <input type="text" name="txtEstado" value="1" hidden=""/>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$<%= Math.round(producto.getPrecio() * c.getCantidad() * 100 / 100)%></p>
                                    </td>
                                    <td class="cart_delete">
                                        <input name="txtId<%=x%>" value="<%= producto.getId_producto()%>" hidden="" />
                                        <span id="idmenu" style="display: none;"><%= producto.getId_producto()%></span>
                                        <a class="cart_quantity_delete" href="" id="borraritem"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>

                                <%}
                                    }%>

                            </tbody>
                        </table>
                        <%  if (carritos == null) { %>   
                        <center><h4>No hay Productos</h4></center>
                            <%}%>
                    </div>


                </div>
            </section> <!--/#cart_items-->





            <section id="do_action">
                <div class="container">
                    <div class="row">

                        <div class="col-sm-6">

                            <h1 style="color:#F2BA31;">Importante</h1>
                            <h4 style="font-weight: bolder;">Para Finalizar el pedido, debe seleccionar la mesa en la cual va a ir el pedido.</h4>

                        </div>


                        <div class="col-sm-6">
                            <div class="total_area">
                                <ul>
                                    <h4 style="font-weight: bolder;">Seleccione la Mesa del Pedido</h4>
                                    <select name="cboMesa">
                                        <option value="hide">Mesa</option>
                                        <c:forEach var="mesas" items="${mesa.rows}">
                                            <option value="${mesas.id_mesa}">${mesas.id_mesa}</option>
                                        </c:forEach>
                                    </select>

                                    <li>Sub Total <span id="txtSubTotal">$<%= Math.round(total * 100 / 100)%></span></li>
                                    <li>Impuesto <span>$0</span></li>
                                    
                                    <input type="number" name="txtPedido" value="1" hidden=""/>
                                    <input name="txtUsuario" value="${usuario}" hidden=""/>
                                    <input name="txtTotal" value="<%= Math.round(total * 100 / 100)%>" hidden=""/>
                                    <input type="date" value="<%=dateFormat.format(date)%>" name="txtFecha" hidden="" />
                                    
                                    <li>Total <span id="txtTotal">$<%= Math.round(total * 100 / 100)%></span></li>
                                </ul>
                                <center>
                                    <button class="btn btn-default check_out" href="" type="submit" name="btnAccion" value="Generar">Generar Pedido</button>
                                    <button class="btn btn-default check_out" href="" type="submit" name="btnAccion" value="Agregar">Enviar a Cocina</button>
                                </center>
                                <center>
                                    ${msjOK}
                                    ${msjNO}
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/#do_action-->
        </form>



        <footer id="footer"><!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>e</span>-shopper</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="images/home/iframe1.png" alt="" />
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="images/home/iframe2.png" alt="" />
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="images/home/iframe3.png" alt="" />
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="video-gallery text-center">
                                    <a href="#">
                                        <div class="iframe-img">
                                            <img src="images/home/iframe4.png" alt="" />
                                        </div>
                                        <div class="overlay-icon">
                                            <i class="fa fa-play-circle-o"></i>
                                        </div>
                                    </a>
                                    <p>Circle of Hands</p>
                                    <h2>24 DEC 2014</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="address">
                                <img src="images/home/map.png" alt="" />
                                <p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Service</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Online Help</a></li>
                                    <li><a href="">Contact Us</a></li>
                                    <li><a href="">Order Status</a></li>
                                    <li><a href="">Change Location</a></li>
                                    <li><a href="">FAQ’s</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Quock Shop</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">T-Shirt</a></li>
                                    <li><a href="">Mens</a></li>
                                    <li><a href="">Womens</a></li>
                                    <li><a href="">Gift Cards</a></li>
                                    <li><a href="">Shoes</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>Policies</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Terms of Use</a></li>
                                    <li><a href="">Privecy Policy</a></li>
                                    <li><a href="">Refund Policy</a></li>
                                    <li><a href="">Billing System</a></li>
                                    <li><a href="">Ticket System</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">
                                <h2>About Shopper</h2>
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="">Company Information</a></li>
                                    <li><a href="">Careers</a></li>
                                    <li><a href="">Store Location</a></li>
                                    <li><a href="">Affillate Program</a></li>
                                    <li><a href="">Copyright</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <h2>About Shopper</h2>
                                <form action="#" class="searchform">
                                    <input type="text" placeholder="Your email address" />
                                    <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                    <p>Get the most recent updates from <br />our site and be updated your self...</p>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright � TechnoFood 2019. Todos los derechos Reservados.</p>
                    </div>
                </div>
            </div>

        </footer><!--/Footer-->



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="js/carrito.js"></script>
    </body>
</html>