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
<style type="text/css">* {cursor: url(http://cur.cursors-4u.net/food/foo-3/foo259.ani), url(http://cur.cursors-4u.net/food/foo-3/foo259.png), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2011/11/15/boucing-red-apple.html" target="_blank" title="Boucing Red Apple"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Boucing Red Apple" style="position:absolute; top: 0px; right: 0px;" /></a>
        <!-- partial:index.partial.html -->
        <div class="container">
            <center><h1>Detalle de la Reserva</h1>
            </center>
            <br>
            <br>

            <div class="bp-card" data-clickthrough="link">
                <div class="bp-card_label">
                    <div class="bd-border_solid"></div>
                    <div class="bd-border_dotted"></div>
                </div>

                <div class="bp-card_content">
                    <c:forEach var="aux" items="${reservaLista}">
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
        <img src="img/impresora.png" width="80" height="80" onclick="window.print();"/>
        <a id="download" href=""><img src="img/descargar.png" width="80" height="80"/></a>
        <a href="comida"><img src="img/volver.png" width="80" height="80"/></a>
    </center>
    
    <script type="text/javascript" >
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


    <!-- partial -->

</body>
</html>