<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Mesas</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><link rel="stylesheet" href="css/mesa.css">
    </head>
    <body>
        <style type="text/css">* {cursor: url(http://cur.cursors-4u.net/cursors/cur-1/cur11.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2005/05/12/cur11.html" target="_blank" title="Watermelon"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Watermelon" style="position:absolute; top: 0px; right: 0px;" /></a>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("nombre") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <!-- partial:index.partial.html -->
        <a href="navegador.jsp"><button class="botonVolver">Volver</button></a>


        <div class="pricingTable">

            <h2 class="pricingTable-title">Disponibilidad de Mesas</h2>
            <h3 class="pricingTable-subtitle">Seleccione la mesa a ocupar</h3>

            <center><input type="button" name="btnAccion" onClick="location.reload();" value="Listar" class="botonListar"/></center>



            <ul class="pricingTable-firstTable">
                <c:forEach var="aux" items="${listaMesa}">
                    <form action="servletMesa" method="POST">
                        <li class="pricingTable-firstTable_table">

                            <input type="number" value="${aux.getId_mesa()}" name="txtIdMesa" hidden="" />
                            <h1 class="pricingTable-firstTable_table__header">Mesa ${aux.getId_mesa()}</h1>
                            <p class="pricingTable-firstTable_table__pricing"><span></span><span>${aux.getAsientos()}</span><span>Asientos</span></p>

                            <c:if test="${aux.getEstado_mesa() == 'Disponible'}">
                                <input class="pricingTable-firstTable_table__getstart" type="submit" name="btnAccion" value="Reservar">
                            </c:if>

                            <c:if test="${aux.getEstado_mesa() == 'No Disponible'}">
                                <input class="pricingTable-firstTable_table__getstart" type="submit" name="btnAccion" value="Liberar" style="background-color: red;">
                            </c:if>

                        </li>
                    </form>
                </c:forEach>

            </ul>
        </div>
    <center>
        <p>${msjOK}</p>
        <p>${msjNO}</p>
    </center>



</body>
</html>