<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TechnoFood - Agregar Receta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/receta.css">
        <!--===============================================================================================-->
    </head>
    <body>

        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("nombre") == null) {
                response.sendRedirect("404.jsp");
            }
        %>

        <%
            Date date = new Date();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            System.out.println("Fecha: " + dateFormat.format(date));
        %>



        <div class="bg-contact100" style="background-image: url('img/recetaForm.jpg');">
            <div class="container-contact100">
                <div class="wrap-contact100">
                    <div class="contact100-pic js-tilt" data-tilt>
                        <img src="img/img-01.png" alt="IMG">
                    </div>

                    <form class="contact100-form validate-form" action="servletRecetas" method="POST">
                        <span class="contact100-form-title">
                            <center>
                                Receta
                            </center>
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el nombre del Autor">
                            <a style="font-weight:bold; font-size: 15px;">Foto (opcional) : </a>
                            <br>
                            <input style="margin-top: 15px;" type="file" name="txtFoto">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el nombre de la receta">
                            <input class="input100" type="text" name="txtNombreReceta" placeholder="Nombre de la Receta">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el nombre del Autor">
                            <input class="input100" type="text" name="txtAutor" placeholder="Autor">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" >
                            <input class="input100" type="text" name="txtFecha" value="<%=dateFormat.format(date)%>" placeholder="<%=dateFormat.format(date)%>" disabled="">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese los Ingredientes">
                            <textarea class="input100" type="text" name="txtIngredientes" placeholder="Ingrese los ingredientes"></textarea>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-envelope" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese la receta">
                            <textarea class="input100" type="text" name="txtDescripcion" placeholder="Ingrese su receta aquí"></textarea>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-envelope" aria-hidden="true"></i>-->
                            </span>
                        </div>


                        <div class="container-contact100-form-btn">
                            <button class="contact100-form-btn" type="submit" name="btnAccion" value="Agregar">
                                Ingresar Receta
                            </button>
                        </div>


                        <br>
                        <br>
                        <div>
                            <center>
                                ${msjOK}
                                ${msjNO}
                            </center>
                        </div>
                    </form>
                    <div class="container-contact100-form-btn">
                        <a href="navegador.jsp"><button type="submit" class="contact100-form-btn">
                                Volver
                            </button></a>
                    </div>



                </div>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script>
            $(document).ready(function () {

                var now = new Date();

                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);

                var today = now.getFullYear() + "-" + (month) + "-" + (day);
                $("#fecha").val(today);
            });
        </script>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script >
            $('.js-tilt').tilt({
                scale: 1.1
            })
        </script>
        <!--===============================================================================================-->
        <script src="js/receta.js"></script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-23581568-13');
        </script>

    </body>
</html>
