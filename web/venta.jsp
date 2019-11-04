<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Venta</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/venta.css">
    </head>
    <body>
        <style type="text/css">* {cursor: url(http://cur.cursors-4u.net/cursors/cur-1/cur11.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2005/05/12/cur11.html" target="_blank" title="Watermelon"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Watermelon" style="position:absolute; top: 0px; right: 0px;" /></a>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("nombre") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <form action="servletPlato" method="POST">
            <!-- partial:index.partial.html -->
            <!-- Nav -->
            <nav class="navbar navbar-inverse bg-inverse fixed-top bg-faded">
                <div class="row">
                    <div class="col">
                        <a href="navegador.jsp"><button type="button" class="btn btn-info">Volver</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="btn btn-primary" data-toggle="modal" style="border-left: 25px;" data-target="#cart">Carrito (<span class="total-count"></span>)</button> &nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="clear-cart btn btn-danger" style="border-right: 25px;">Limpiar Carro</button> &nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="clear-cart btn btn-success" name="btnAccion" value="Actualizar" style="border-right: 25px;">Actualizar</button>
                    </div>
                </div>
            </nav>

            <!-- Menus -->
            <!-- Main -->
           
                <div id="menu">
                    <h1 id="titulo-menu"><img src="img/menuRespaldo.png" id="foto"></h1>
                    <div class="container">
                        <div class="row">
                            <c:forEach var="aux" items="${listaMenu}">
                                <div class="col">
                                    <div class="card" style="width: 20rem;">
                                        <img class="card-img-top" src="/technoFood/fotos/${aux.getFoto()}" alt="Card image cap">
                                        <div class="card-block">
                                            <h4 class="card-title">${aux.getMenu()}</h4>
                                            <p class="card-text">${aux.getDescripcion()}</p>
                                            <input type="hidden" value="${aux.getId_menu()}" name="idMenu"> 
                                            Cantidad:  <input style="border: 0;" type="number" value="1" name="cantidad" id="cantidad"/>
                                            <p class="card-text">Precio: $${aux.getPrecio()}</p>
                                            <input data-name="${aux.getMenu()}" data-price="${aux.getPrecio()}" name="btnAccion" type="submit" value="Agregar">
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            

            <!-- Platos -->
            <div id="menu">
                <h1 id="titulo-menu"><img src="img/plato.png" id="foto"></h1>
                <div class="container">
                    <div class="row">
                        <c:forEach var="aux" items="${listaPlato}">
                            <div class="col">
                                <div class="card" style="width: 20rem;">
                                    <img class="card-img-top" src="/technoFood/fotos/${aux.getFoto()}" alt="Card image cap">
                                    <div class="card-block">
                                        <h4 class="card-title">${aux.getNombre_plato()}</h4>
                                        <p class="card-text">${aux.getDescripcion()}</p>
                                        <p class="card-text">Precio: $${aux.getPrecio()}</p>
                                        <a href="#" data-name="${aux.getNombre_plato()}" data-price="${aux.getPrecio()}" class="add-to-cart btn btn-primary">Agregar</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- Extra -->
            <div id="menu">
                <h1 id="titulo-menu"><img src="img/extra.png" id="foto"></h1>
                <div class="container">
                    <div class="row">
                        <c:forEach var="aux" items="${listaExtra}">
                            <div class="col">
                                <div class="card" style="width: 20rem;">
                                    <img class="card-img-top" src="/technoFood/fotos/${aux.getFoto()}" alt="Card image cap">
                                    <div class="card-block">
                                        <h4 class="card-title">${aux.getNombre()}</h4>
                                        <p class="card-text">${aux.getDescripcion()}</p>
                                        <p class="card-text">Precio: $${aux.getPrecio()}</p>
                                        <a href="#" data-name="${aux.getNombre()}" data-price="${aux.getPrecio()}" class="add-to-cart btn btn-primary">Agregar</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>


            <!-- Modal -->
            <div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Producto</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table class="show-cart table">
                            </table>
                            <div>Total Precio: $<span class="total-cart"></span></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-primary">Generar Voucher</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- partial -->
            <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
            <script  src="js/venta.js"></script>
        </form>
        <a href="reporteBoucher.jsp">reporte</a>
    </body>
</html>