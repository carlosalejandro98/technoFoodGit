<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Ticket</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="css/ticket.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <form action="servletReserva" method="POST">
            <div class="container">
                <center><h1>Reservas</h1>
                    <input type="text" name="txtRut" placeholder="Ingrese su rut" required="">
                    <input type="submit" name="btnAccion" value="Buscar">
                </center>
                <br>
                <br>

                <div class="bp-card" data-clickthrough="link">
                    <div class="bp-card_label">
                        <div class="bd-border_solid"></div>
                        <div class="bd-border_dotted"></div>
                    </div>

                    <div class="bp-card_content">
                        <c:forEach var="aux" items="${listarReserva}">
                            <p class="secondary">N° del Boucher</p>
                            <h4>${aux.getId_reserva()}</h4>

                            <ul>
                                <span>Datos de la Reserva</span>
                                <li>
                                    ${aux.getNombre()} ${aux.getApellido()}
                                </li>
                                <li>
                                    ${aux.getFecha()}
                                </li>
                                <li>
                                    ${aux.getAsiento()} Asientos 
                                </li>
                            </ul>
                        </c:forEach>
                        <a class="price">
                            <img src="img/technofood.svg" style="float: left; width: 100px; height: 100px;"/>
                        </a>

                    </div>

                </div>

            </div>
            <center>
                <input type="button" name="imprimir" value="Imprimir" onclick="window.print();"><br><br>
                <a id="download" href="">Descargar</a><br><br>
                <a href="comida">Volver</a>
            </center>
            <script type="text/javascript">
                html2canvas(document.body, {
                    onrendered(canvas) {
                        var link = document.getElementById('download');
                        ;
                        var image = canvas.toDataURL();
                        link.href = image;
                        link.download = 'reserva.png';
                    }
                });
            </script>
        </form>
        <!-- partial -->

    </body>
</html>