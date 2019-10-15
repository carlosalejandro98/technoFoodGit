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
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("nombre") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <h1>Bienvenido ${nombre} ${apellido}</h1>
        <h1>Seleccione la accion que desee hacer</h1>
        <c:choose>
            <c:when test="${usu == 1}">
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
                
              

                <a href="index.jsp">
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

                <a href="venta.jsp">
                    <div class="flip flip-vertical">
                        <div class="front" style="background-image: url(img/tomarPedido.jpg)">
                            <h1 class="text-shadow">Ingresar Orden</h1>
                        </div>
                        <div class="back">
                            <h2>Ingresar Orden de los clientes.</h2>
                        </div>
                    </div>
                </a>

                <a href="index.jsp">
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
                
                <a href="index.jsp">
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