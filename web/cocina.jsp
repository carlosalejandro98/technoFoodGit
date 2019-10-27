<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Cocina</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" href="css/cocina.css"><script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

    </head>
    <body>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("sesion") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <form action="servletPedido" method="POST">
            <!-- partial:index.partial.html -->
            <div class="container">
                <div class="well well-sm">
                    <strong>Modo</strong>
                    <div class="btn-group">
                        <a href="#" id="list" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-th-list"></span>Lista</a> <a href="#" id="grid" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-th"></span>Grupo</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <span><a href="navegador.jsp"><input class="clear-cart btn btn-danger" value="Volver" style="border-right: 25px;"></a></span>
                        <span><button class="clear-cart btn btn-success" name="btnAccion" value="Actualizar" style="border-right: 25px;">Actualizar</button></span>
                    </div>
                </div>

                <c:forEach var="aux" items="${listaPedido}">
                    <div id="products" class="row list-group">
                        <div class="item  col-xs-4 col-lg-4">
                            <div class="thumbnail">
                                <img class="group list-group-image" src="img/logoPedidos.png" alt="" />
                                <div class="caption">
                                    <h2 class="group inner list-group-item-heading">Pedido Numero: ${aux.getId_detalle_venta()}</h2>
                                    <input type="number" name="txtId" value="${aux.getId_detalle_venta()}" hidden="" />
                                    <p class="group inner list-group-item-text">

                                        Nombre del Pedido: ${aux.getNombre_producto()}
                                        <br>
                                        Tipo de Producto : ${aux.getTipo_producto()}
                                        <br>
                                        Mesa: ${aux.getId_mesa()}
                                        <br>
                                        cantidad: ${aux.getCantidad()}
                                        <br>


                                    </p>
                                    
                                    <div class="row">
                                        <div class="col-xs-12 col-md-6">
                                            <p class="lead"></p>
                                        </div>
                                        <c:if test="${aux.getId_estado() == 1}">
                                            <div class="col-xs-12 col-md-6">
                                                <button class="btn btn-info btn-lg" name="btnAccion" value="Ingresado" style="border-right: 25px;">Actualizar</button>
                                            </div>
                                        </c:if>

                                        <c:if test="${aux.getId_estado() == 2}">
                                            <div class="col-xs-12 col-md-6">
                                                <input class="btn btn-primary btn-lg" value="En Proceso" type="submit" name="btnAccion">
                                            </div>
                                        </c:if>

                                        <c:if test="${aux.getId_estado() == 3}">
                                            <div class="col-xs-12 col-md-6">
                                                <input class="btn btn-success btn-lg" value="Listo" >
                                            </div>
                                        </c:if>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
            <!-- partial -->
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
            <script  src="js/cocina.js"></script>
        </form>
    </body>
</html>