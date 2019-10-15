<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Acceso Denegado</title>
        <link href="https://fonts.googleapis.com/css?family=Limelight" rel="stylesheet"><link rel="stylesheet" href="css/accesoDenegado.css">
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <div class='hover'>
            <center>
                <h1 style="color: red;">Acceso Denegado</h1>
            </center>
            <a href="index.jsp"><svg class="liquid-button"
                    data-text="REGRESAR"
                    data-force-factor="0.1"
                    data-layer-1-viscosity="0.5"
                    data-layer-2-viscosity="0.4"
                    data-layer-1-mouse-force="400"
                    data-layer-2-mouse-force="500"
                    data-layer-1-force-limit="1"
                    data-layer-2-force-limit="2"
                    data-color1="#F3D740"
                    data-color2="#5FC650"
                    data-color3="#F3D740"></svg></a>

            <div class='background'>
                <div class='door'></div>
                <div class='rug'></div>
            </div>
            <div class='foreground'>
                <div class='bouncer'>
                    <div class='head'>
                        <div class='neck'></div>
                        <div class='eye left'></div>
                        <div class='eye right'></div>
                        <div class='ear'></div>
                    </div>
                    <div class='body'></div>
                    <div class='arm'></div>
                </div>
                <div class='poles'>
                    <div class='pole left'></div>
                    <div class='pole right'></div>
                    <div class='rope'></div>
                </div>
            </div>
        </div>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.6.4/dat.gui.min.js'></script>
        <script  src="js/boton.js"></script>
    </body>
</html>