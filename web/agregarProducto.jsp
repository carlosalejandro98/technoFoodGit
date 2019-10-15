<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TechnoFood - Agregar Producto</title>
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

        <sql:setDataSource var="dataSource" driver="oracle.jdbc.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="technoFood" password="admin"></sql:setDataSource>

        <sql:query dataSource="${dataSource}" var="tipo">
            SELECT id_tipo_producto, tipo_producto FROM tipo_producto
        </sql:query>

        <sql:query dataSource="${dataSource}" var="insumo">
            SELECT id_insumo, nombre FROM insumo
        </sql:query>

        <sql:query dataSource="${dataSource}" var="receta">
            SELECT id_receta, nombre_receta FROM receta
        </sql:query>
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



        <div class="bg-contact100" style="background-image: url('img/fondoPlato.jpg');">
            <div class="container-contact100">
                <div class="wrap-contact100">
                    <div class="contact100-pic js-tilt" data-tilt>
                        <img src="img/iconoplato.png" alt="IMG">
                    </div>

                    <form class="contact100-form validate-form" action="servletRecetas" method="POST">
                        <span class="contact100-form-title">
                            <center>
                                Producto
                            </center>
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el nombre del producto">
                            <input class="input100" type="text" name="txtNombreProducto" placeholder="Nombre del Producto">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>


                        <div class="wrap-input100 validate-input" data-validate = "Ingrese la receta">
                            <textarea class="input100" type="text" name="txtDescripcion" placeholder="Ingrese su receta aquí"></textarea>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-envelope" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el precio del producto">
                            <input class="input100" type="number" name="txtPrecio" placeholder="Precio">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese el nombre del Autor">
                            <a style="font-weight:bold; font-size: 15px;">Foto (opcional) : </a>
                            <br>
                            <input style="margin-top: 15px;" type="file" name="txtFoto">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <!--<i class="fa fa-user" aria-hidden="true"></i>-->
                            </span>
                        </div>
                        <br>
                        <br>
                        <div class="wrap-input100 validate-input">
                            <label>Tipo de Producto:</label>
                            <select name="cboMesa">
                                <c:forEach var="tipos" items="${tipo.rows}">
                                    <option value="${tipos.id_tipo_producto}">${tipos.tipo_producto}</option>
                                </c:forEach>

                            </select>
                        </div> 

                        <div class="wrap-input100 validate-input">
                            <label>Seleccione el Insumo:</label>
                            <select name="cboMesa">
                                <c:forEach var="insumos" items="${insumo.rows}">
                                    <option value="${insumos.id_insumo}">${insumos.nombre}</option>
                                </c:forEach>

                            </select>
                        </div>

                        <div class="wrap-input100 validate-input">
                            <label>Seleccione la receta:</label>
                            <select name="cboMesa">
                                <c:forEach var="recetas" items="${receta.rows}">
                                    <option value="${recetas.id_receta}">${recetas.nombre_receta}</option>
                                </c:forEach>

                            </select>
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
