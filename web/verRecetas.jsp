<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>TechnoFood - Ver Recetas</title>
        <meta name="description" content="A responsive folded flyer-like restaurant menu with some 3D" />
        <meta name="keywords" content="css3, perspective, 3d, jquery, transform3d, responsive, template, restaurant, menu, leaflet, folded, flyer, concept" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/styleCarta.css"/>
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,500|Arvo:700' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
        <!--[if lte IE 8]><style>.support-note .note-ie{display:block;}</style><![endif]-->
    </head>
    <body>
        <%
            HttpSession session1 = request.getSession();
            if (session1.getAttribute("nombre") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <form action="servletRecetas" method="POST">
            <div class="container">

                <!-- Codrops top bar -->
                <div class="codrops-top">
                    <a href="navegador.jsp">
                        <strong>&laquo; Volver al Navegador </strong>
                    </a>
                </div><!--/ Codrops top bar -->

                <header>

                    <h1>Recetas</h1>
                    <h2>
                        Seleccione la receta para ver la información.
                        <span class="demo-note">Your current viewport size shows the simplified version</span>

                    </h2>

                    <button value="Actualizar" name="btnAccion" style="background-color: #F3BF1B;">Actualizar</button>    

                    <div class="support-note"><!-- let's check browser support with modernizr -->
                        <span class="no-cssanimations">La hoja de estilo no soporta en su navegador</span>
                        <span class="no-csstransforms">CSS transforms are not supported in your browser</span>
                        <span class="no-csstransforms3d">CSS 3D transforms are not supported in your browser</span>
                        <span class="no-csstransitions">CSS transitions are not supported in your browser</span>
                        <span class="note-ie">Sorry, only modern browsers.</span>
                    </div>

                </header>



                <c:forEach var="aux" items="${listaRecetas}">
                    <section class="main">
                        <div id="rm-container" class="rm-container">
                            <div class="rm-wrapper">
                                <div class="rm-cover">

                                    <div class="rm-front">
                                        <div class="rm-content">
                                            <div class="rm-logo"></div>
                                            <h2>${aux.getNombre_receta()}</h2>
                                            <h3>${aux.getAutor()}</h3>

                                            <a href="#" class="rm-button-open">Ver Receta</a>
                                        </div><!-- /rm-content -->
                                    </div><!-- /rm-front -->

                                    <div class="rm-back">
                                        <div class="rm-content">
                                            <h4>Datos de la Receta</h4>
                                            <dl>
                                                <dd><img src="/technoFood/fotos/${aux.getFoto()}" width="100" height="100" /></dd>

                                                <dt>Receta</dt>
                                                <dd>${aux.getNombre_receta()}</dd>

                                                <dt>Autor</dt>
                                                <dd>${aux.getAutor()}</dd>

                                                <dt>Fecha de Creación</dt>
                                                <dd>${aux.getFecha()}</dd>

                                            </dl>


                                        </div><!-- /rm-content -->
                                        <div class="rm-overlay"></div>

                                    </div><!-- /rm-back -->

                                </div><!-- /rm-cover -->

                                <div class="rm-middle">
                                    <div class="rm-inner">
                                        <div class="rm-content">
                                            <h4>Ingredientes</h4>
                                            <dl>
                                                <dt></dt>
                                                <dd>${aux.getIngredientes()}</dd>

                                            </dl>
                                        </div><!-- /rm-content -->
                                        <div class="rm-overlay"></div>
                                    </div><!-- /rm-inner -->
                                </div><!-- /rm-middle -->

                                <div class="rm-right">

                                    <div class="rm-front">

                                    </div>

                                    <div class="rm-back">
                                        <span class="rm-close">Cerrar</span>
                                        <div class="rm-content">
                                            <h4>Como preparar</h4>
                                            <dl>
                                                <dt>Paso a Paso</dt>
                                                <dd>${aux.getDescripcion()}</dd>

                                            </dl>
                                            <div class="rm-order">
                                                <p><strong>En caso de encontrar una falla en la receta</strong><br> Comunicarse con el administrador.</p>
                                            </div>
                                        </div><!-- /rm-content -->
                                    </div><!-- /rm-back -->
                                </div><!-- /rm-right -->
                            </div><!-- /rm-wrapper -->
                        </div><!-- /rm-container -->
                    </section>
                </c:forEach>

            </div>
            <!-- jQuery if needed -->
            <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
            <script type="text/javascript" src="js/menu.js"></script>
            <script type="text/javascript">
                $(function () {

                    Menu.init();

                });
            </script>

        </form>
    </body>
</html>
