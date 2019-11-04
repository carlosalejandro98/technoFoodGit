<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Navegador</title>
        <link rel="stylesheet" href="css/navegador.css">
    </head>
    <body>
        <style type="text/css">* {cursor: url(http://cur.cursors-4u.net/cursors/cur-1/cur11.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2005/05/12/cur11.html" target="_blank" title="Watermelon"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Watermelon" style="position:absolute; top: 0px; right: 0px;" /></a>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("sesion") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <h1>Bienvenido ${nombre} ${apellido}</h1>
        <h1>Seleccione la accion que desee hacer</h1>

        <c:choose>
            <c:when test="${usu == 1}">
                <a href="servletMesa">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/mesa.jpg)">
                            <h1 class="text-shadow">Disponibilidad de Mesa</h1>
                        </div>
                        <div class="back">
                            <h2>Cambiar estados de Mesas.</h2>
                        </div>
                    </div>
                </a>
                <a href="servletPedido">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/recibirPedido.jpg)">
                            <h1 class="text-shadow">Recibir Pedido</h1>
                        </div>
                        <div class="back">
                            <h2>Digitalizar los pedidos de los clientes.</h2>
                        </div>
                    </div>
                </a>
                <a href="receta.jsp">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/receta.jpg)">
                            <h1 class="text-shadow">Ingresar Receta</h1>
                        </div>
                        <div class="back">
                            <h2>Ingresar las recetas que se utilizan para hacer los platos ofrecidos.</h2>
                        </div>
                    </div>
                </a>  


                <a href="verRecetas.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/verReceta.png)">
                            <h1 class="text-shadow">Ver Receta</h1>
                        </div>
                        <div class="back">
                            <h2>Digitalizar las recetas creadas.</h2>
                        </div>
                    </div>
                </a>

                <a href="shop.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/tomarPedido.jpg)">
                            <h1 class="text-shadow">Ingresar Orden</h1>
                        </div>
                        <div class="back">
                            <h2>Ingresar Orden de los clientes.</h2>
                        </div>
                    </div>
                </a>

                <a href="agregarProducto.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/fondoMenu.jpg)">
                            <h1 class="text-shadow">Agregar Producto</h1>
                        </div>
                        <div class="back">
                            <h2>Agregar Productos para su venta.</h2>
                        </div>
                    </div>
                </a>



                <a href="cerrarSesion">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/salir.jpg)">
                            <h1 class="text-shadow">Salir</h1>
                        </div>
                        <div class="back">
                            <h2>Cerrar Sesión.</h2>
                        </div>
                    </div>
                </a>


            </c:when>
            <c:when test="${usu == 2}">  
                <a href="mesa.jsp">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/mesa.jpg)">
                            <h1 class="text-shadow">Asignar Mesa</h1>
                        </div>
                        <div class="back">
                            <h2>Seleccionar la mesa del cliente.</h2>
                        </div>
                    </div>
                </a>

                <a href="shop.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/tomarPedido.jpg)">
                            <h1 class="text-shadow">Ingresar Orden</h1>
                        </div>
                        <div class="back">
                            <h2>Ingresar Orden de los clientes.</h2>
                        </div>
                    </div>
                </a>

                <a href="cerrarSesion">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/salir.jpg)">
                            <h1 class="text-shadow">Salir</h1>
                        </div>
                        <div class="back">
                            <h2>Cerrar Sesión.</h2>
                        </div>
                    </div>
                </a>
            </c:when>

            <c:when test="${usu == 3}">  

                <a href="cocina.jsp">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/recibirPedido.jpg)">
                            <h1 class="text-shadow">Recibir Pedido</h1>
                        </div>
                        <div class="back">
                            <h2>Digitalizar los pedidos de los clientes.</h2>
                        </div>
                    </div>
                </a>
                <a href="receta.jsp">
                    <div class="flip">
                        <div class="front" style="background-image: url(img/receta.jpg)">
                            <h1 class="text-shadow">Ingresar Receta</h1>
                        </div>
                        <div class="back">
                            <h2>Ingresar las recetas que se utilizan para hacer los platos ofrecidos.</h2>
                        </div>
                    </div>
                </a>  

                <a href="verRecetas.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/verReceta.png)">
                            <h1 class="text-shadow">Ver Receta</h1>
                        </div>
                        <div class="back">
                            <h2>Digitalizar las recetas creadas.</h2>
                        </div>
                    </div>
                </a>

                <a href="cerrarSesion">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/salir.jpg)">
                            <h1 class="text-shadow">Salir</h1>
                        </div>
                        <div class="back">
                            <h2>Cerrar Sesión.</h2>
                        </div>
                    </div>
                </a>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>
    </body>
</html>