<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood Reservar</title>
        <link rel="stylesheet" href="https://anandchowdhary.github.io/ionicons-3-cdn/icons.css" integrity="sha384-+iqgM+tGle5wS+uPwXzIjZS5v6VkqCUV7YQ/e/clzRHAxYbzpUJ+nldylmtBWCP0" crossorigin="anonymous">


        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Voltaire" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/reservar.css">
    </head>
    <body>
        <style type="text/css">* {cursor: url(http://ani.cursors-4u.net/food/foo-7/foo651.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2013/04/16/starbucks-frappuccino.html" target="_blank" title="Starbucks Frappuccino"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Starbucks Frappuccino" style="position:absolute; top: 0px; right: 0px;" /></a>
        <sql:setDataSource var="dataSource" driver="oracle.jdbc.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="technoFood" password="admin"></sql:setDataSource>

        <sql:query dataSource="${dataSource}" var="mesa">
            SELECT id_mesa, asientos FROM mesa WHERE estado = 'Disponible'
        </sql:query>

        <!-- partial:index.partial.html -->
        <form class="quick-reservation" action="servletReserva" method="POST">

            <div class="container">
                <header class="quick-reservation__header">
                    <img src="img/technofood.svg" style="float: left; width: 100px; height: 100px;"/>
                    <h2 class="title">
                        Reservar Mesa
                    </h2>

                    <div class="close-icon">
                        <a href="cancelarReserva.jsp" ><input type="button" value="Cancelar Reserva" style="background-color: red;"></a>
                    </div>
                </header>

                <div class="quick-reservation__form">
                    <section class="form__content">
                        <div class="row-wrapper">

                            <div class="ele email-address">
                                <label for="firstName">Rut</label>
                                <input type="text" placeholder="11.111.111-1" name="txtRut" required="">
                            </div>

                            <div class="ele first-name">
                                <label for="firstName">Nombres</label>
                                <input type="text" placeholder="Raymond Fabian" name="txtNombre" required="">
                            </div>

                            <div class="ele first-name">
                                <label for="firstName">Apellidos</label>
                                <input type="text" placeholder="Contreras Yañez" name="txtApellido" required="">
                            </div>





                        </div>
                        <div class="row-wrapper">

                            <div class="ele first-name">
                                <label for="firstName">Telefono</label>
                                <input type="text" placeholder="9896574526" name="txtTelefono" minlength="7" maxlength="8" required="">
                            </div>

                            <div class="ele email-address">
                                <label for="firstName">Correo Electronico</label>
                                <input type="email" placeholder="fcontreras@technofood.com" name="txtCorreo" required="">
                            </div>





                        </div>

                        <div class="row-wrapper">
                            <div>
                                <label for="firstName">Asientos</label>
                                <input type="number" name="txtAsientos" min="1" max="15" required="">
                            </div>
                        </div>

                        <div class="row-wrapper">
                            <div>
                                <label for="firstName">Fecha</label>
                                <input type="date" name="txtFecha" required="">
                            </div>
                        </div>

                        <div class="ele rooms">
                            <input type="number" name="cboMesa" value="1" hidden="">
                        </div>   

                    </section>
                </div>

                <div class="reservation-info">
                    <div class="ele data">
                        <h4 class="data__head">!Importante</h4>
                        <p class="data__description">La disponibilidades de mesas esta digitalizada en el apartado de seleccionar Mesa</p>
                    </div>
                    <div class="ele data">
                        ${msjOK}
                        ${msjNO}
                    </div>

                </div>

                <footer class="form__footer">
                    <div class="footer-wrapper">
                        <input type="submit" name="btnAccion" value="Reservar" style="background-color: green;">
                        <a href="comida"><input type="button" value="Volver" class="" style="background-color: #FFAE33;"></a>
                    </div>
                </footer>
            </div>

        </form>

        <p class="after" style="display: none; color: #777; font-weight: 200;">Recargar la pagina para visualizar el contenido.</p>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script  src="js/reservar.js"></script>

    </body>
</html>