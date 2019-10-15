<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>TechnoFood - Cancelar Reserva</title>
        <link rel="stylesheet" href="https://anandchowdhary.github.io/ionicons-3-cdn/icons.css" integrity="sha384-+iqgM+tGle5wS+uPwXzIjZS5v6VkqCUV7YQ/e/clzRHAxYbzpUJ+nldylmtBWCP0" crossorigin="anonymous">


        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Voltaire" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/reservar.css">
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <form class="quick-reservation" action="servletReserva" method="POST">

            <div class="container">
                <header class="quick-reservation__header">
                    <h2 class="title">
                        Cancelar Reserva
                    </h2>
                </header>

                <div class="quick-reservation__form">
                    <section class="form__content">
                        <div class="row-wrapper">
                            <center>
                                <div class="ele email-address">
                                    <label for="firstName">Numero de Boucher</label>
                                    <input type="text" placeholder="12356" name="txtId">
                                </div>
                            </center>

                           
                        </div>
                        <div class="row-wrapper">

                            <div class="footer-wrapper">
                                <input type="submit" name="btnAccion" value="Cancelar" style="background-color:red;">
                            </div>

                        </div>

                    </section>
                </div>

                <div class="reservation-info">
                    <div class="ele data">
                        <h4 class="data__head">!Importante</h4>
                        <p class="data__description">Para eliminar su reserva debe ingresar el numero de boucher generado al reservar.</p>
                    </div>
                    <div class="ele data">
                        ${msjOK}
                        ${msjNO}
                    </div>

                </div>

                <footer class="form__footer">
                    <div class="footer-wrapper">
                        <a href="reservar.jsp"><input type="button" value="Volver a Reservar" style="background-color: green;"></a>
                        <a href="index.jsp"><input type="button" value="Volver al Inicio" style="background-color: #FFAE33;"></a>
                    </div>
                </footer>
            </div>

        </form>

        <p class="after" style="display: none; color: #777; font-weight: 200;">Reload the browser window everytime you close the reservation form to show up again.</p>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script  src="js/reservar.js"></script>

    </body>
</html>