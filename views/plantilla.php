<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Generador de Códigos de Barras</title>
    <!-- Agrega las librerías de Bootstrap y jQuery -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
     
    <?php
        if(isset($_SESSION['sesionIniciada']) && $_SESSION['sesionIniciada'] === true)
        {
            if(isset($_GET['ruta']) && $_GET['ruta'] == "create"
                                    || $_GET['ruta'] == "salir"
                                    || $_GET['ruta'] == "report"
                                    || $_GET['ruta'] == "reimpresion")
            {
                echo '
                    <header>
                        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                        <a class="navbar-brand" href="#">Sistema Generador GCBD</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                                <div class="navbar-nav">
                                    <a class="nav-link active" href="create">Crear código de Barra <span class="sr-only">(current)</span></a>
                                    <a class="nav-link" href="report">Reporte</a>
                                    <a class="nav-link" href="reimpresion">Reimpresion</a>
                                    <a class="nav-link" href="salir">Salir</a>
                                </div>
                        </div>
                    </nav>
                </header>';

                include_once $_GET['ruta'].".php";
            }else
            {
                include_once 'create.php';
            }
        }else{
            include_once "login_form.php";
        }
    ?>

    
    <script src="views/scripts/calculo.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
