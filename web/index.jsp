<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>TechnoFood - Inicio</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="css/main.css">
        <!-- animate min css -->
        <link rel="stylesheet" href="css/animate.min.css">
        <script src="js/vendor/jquery-1.11.2.min.js"></script>
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <!-- please register and switch the goole map api key to your own-->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJqiG0aHr760nuzJd9Ycy7BSyCn6c3eZQ"></script>

        <link rel="stylesheet" href="css/reserva.css">

    </head>
    <body>
        
        <style type="text/css">* {cursor: url(http://ani.cursors-4u.net/food/foo-7/foo651.cur), auto !important;}</style><a href="http://www.cursors-4u.com/cursor/2013/04/16/starbucks-frappuccino.html" target="_blank" title="Starbucks Frappuccino"><img src="http://cur.cursors-4u.net/cursor.png" border="0" alt="Starbucks Frappuccino" style="position:absolute; top: 0px; right: 0px;" /></a>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <div id="preloader">
            <div id="status"></div>
        </div>
        <div class="hero">
            <div class="wrap">
                <nav>
                    <div class="navi">
                        <a href="#" class="toggle">Menu</a>
                        <ul>
                            <li><a href="#menu" class="smooth"><i class="fa fa-cutlery" aria-hidden="true"></i>Menú</a></li>
                            <li><a href="#events" class="smooth"><i class="fa fa-music" aria-hidden="true"></i>Eventos</a></li>
                            <li><a href="#about" class="smooth"><i class="fa fa-info" aria-hidden="true"></i>Nosotros</a></li>
                            <li><a href="#map" class="smooth"><i class="fa fa-map-marker" aria-hidden="true"></i>Ubicación</a></li>
                            <li><a href="#reservar" class="smooth"><i class="fa fa-map-marker" aria-hidden="true"></i>Reservar</a></li>
                            <li><a href="login.jsp" class="smooth"><i class="fa fa-users" aria-hidden="true"></i>Iniciar Sesión</a></li>
                        </ul>
                        <a class="logo" href="index.jsp"><!--<img src="img/logo-light.svg">--></a>
                    </div>
                </nav>

                <div id="main">
                    <div id="object1">
                        <img  src="img/technofood.svg" />
                    </div>
                </div>
                <script type="text/javascript">
                    var object1 = $('#object1');

                    var layer = $('#layer');

                    object1.mousemove(function (e) {
                        var valueX = (e.pageX * -1 / 12);
                        var valueY = (e.pageY * -1 / 12);

                        object1.css({
                            'transform': 'translate3d(' + valueX + 'px ,' + valueY + 'px,0) rotate(10deg)'
                        });
                    });
                </script>

                <div class="heading">
                    <h2 class="wow fadeInRight" data-wow-delay="1s">SIGLO XXI</h2>
                    <p class="wow fadeInRight" data-wow-delay="1s">Restaurant de calidad y comodidad para sus clientes.</p>
                    <a href="#map" class="btn-main smooth wow fadeInUp" data-wow-delay="1s">Ver Ubicación</a>
                </div>
            </div>
        </div>
        <form action="comida" method="POST">
            <section class="light parallax" id="menu">
                <div class="wrap menu">
                    <h2 class="brn wow fadeInLeft">Menú</h2>
                    <ul class="filter wow fadeInUp">
                        <li><a href="#main" class="active">Menú</a></li>
                        <li><a href="#desserts">Platos</a></li>
                        <li><a href="#drinks">Extra</a></li>
                    </ul>
                    <div class="menu-card wow fadeInUp">


                        <!-- main id -->
                        <div id="main" class="card">
                            <div class="full main">
                                <h3>Menú</h3>
                            </div>
                            <c:forEach var="aux" items="${listaComida}">

                                <div class="half">
                                    <ul>
                                        <li>${aux.getNombre()}<span class="price">$${aux.getPrecio()}</span></li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </div> <!-- main id end -->


                        <!-- main id -->
                        <div id="desserts" class="card hidden">
                            <div class="full desserts">
                                <h3>Platos</h3>
                            </div>

                            <c:forEach var="aux" items="${listaPlato}">
                                <div class="half">
                                    <ul>
                                        <li>${aux.getNombre()}<span class="price">$${aux.getPrecio()}</span></li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </div> <!-- main id end -->


                        <!-- main id -->
                        <div id="drinks" class="card hidden">
                            <div class="full drinks">
                                <h3>Extras</h3>
                            </div>
                            <c:forEach var="aux" items="${listaExtra}">
                                <div class="half">
                                    <ul>
                                        <li>${aux.getNombre()}<span class="price">$${aux.getPrecio()}</span></li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </div> <!-- main id end -->

                    </div> <!-- Menu card DIV end -->
                </div> <!-- Wrapper end -->
            </section> <!-- Menu section end -->
        </form>

        <section class="dark" id="events">
            <div class="wrap">
                <h2 class="ylw wow fadeInRight">Eventos</h2>
                <div class="evnt-calendar">
                    <div class="scroll wow fadeInUp">
                        <!-- first artist -->
                        <div class="evt">
                            <div class="third">
                                <img src="img/event1.jpg">
                            </div>
                            <div class="two-third">
                                <h3 class="date"><i class="fa fa-calendar-o" aria-hidden="true"></i>Fecha<span>Hora: hora~</span></h3>
                                <p>Evento en el Restaurant. </p>
                                <!--<a href="#" class="btn-main">Learn more</a>-->
                            </div>
                        </div> <!-- artist end -->
                        <div class="evt">
                            <div class="third">
                                <img src="img/event2.jpg">
                            </div>
                            <div class="two-third">
                                <h3 class="date"><i class="fa fa-calendar-o" aria-hidden="true"></i>Fecha<span>Hora: hora~</span></h3>
                                <p>Evento en el Restaurant. </p>
                                <!--<a href="#" class="btn-main">Learn more</a>-->
                            </div>
                        </div> <!-- artist end -->
                        <div class="evt">
                            <div class="third">
                                <img src="img/event3.jpg">
                            </div>
                            <div class="two-third">
                                <h3 class="date"><i class="fa fa-calendar-o" aria-hidden="true"></i>Fecha<span>Hora: hora~</span></h3>
                                <p>Evento en el Restaurant. </p>
                                <!--<a href="#" class="btn-main">Learn more</a>-->
                            </div>
                        </div> <!-- artist end -->
                    </div> <!-- scroll end -->
                    <div class="full wow fadeInUp">
                        <div class="arrows">
                            <a href="#" id="prev" class="left"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                            <a href="#" id="next" class="right"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                        </div>
                        <ul class="handlers">
                            <li><a class="active" href="#artist1"></a></li>
                            <li><a href="#artist2"></a></li>
                            <li><a href="#artist3"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="light parallax" id="about">
            <div class="wrap about">
                <div class="two-third  wow fadeInLeft">
                    <h2 class="brn sngl">Nuestro Restaurant</h2>
                    <h5 class="ylw"> El mejor restaurant de chile esta aqui y se llama siglo XXI, no lo decimos nosotros, sino nuestros clientes. </p>
                        <p class="tel"><i class="fa fa-phone" aria-hidden="true"></i>+562 256894537</p>
                </div>
                <div class="third wow fadeInRight">
                    <img src="img/cheff.jpg">
                </div>
            </div>
        </section>
        <!-- happy hour -->
        <section class="hppy-hr parallax" id="reservar">
            <div class="wrap">
                <h2 class="ylw wow fadeInRight">Reservas</h2>
                <div class="submenu wow fadeInUp">
                    <div class="half">
                        <nav class="main-nav">
                            <ul>
                                <li><a class="cd-signin" href="reservar.jsp">Reservar</a></li>
                                <li><a class="cd-signup" href="cancelarReserva.jsp">Cancelar Reserva</a></li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>
        </section>
        <!-- Map -->
        <div id="map" class="wow fadeIn"></div>
        <!-- Contact -->
        <section class="contact wow fadeIn">
            <div class="wrap subscribe">
                <div class="half">
                    <form role="form">
                        <h2 class="ylw sngl">Contacto</h2>
                    </form>
                </div>
                <div class="half">
                    <ul class="info">
                        <li><i class="fa fa-phone" aria-hidden="true"></i>+562 256894537</li>
                        <li><i class="fa fa-envelope" aria-hidden="true"></i>technofood@restaurant.com</li>
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i>Las Condes #1234, Santiago.<br>
                            Chile</li>
                    </ul>
                </div>
            </div>
        </section>
        <footer class="wow fadeIn">
            <copy>Copyright @ TechnoFood 2019.</copy>
            <ul class="social">
                <li><a href=""><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                <li><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            </ul>
        </footer>



        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/main.js"></script>
        <!-- initialize wow -->
        <script src="js/wow.min.js"></script>
        <script> new WOW().init();</script>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/reserva.js"></script>

    </body>
</html>
