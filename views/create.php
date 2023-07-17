 <?php
require_once '../controllers/calculos.controller.php';
require_once '../models/calculos.model.php';
require_once '../controllers/codigoBarra.controller.php';
?>


<!DOCTYPE html>
<html>
<head>
    <title>Generador de Códigos de Barras</title>
    <link rel="stylesheet" type="text/css" href="../public/styles.css">
    <!-- Agrega las librerías de Bootstrap y jQuery -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header>
        <h1>Generador de Códigos de Barras</h1>
        <nav>
            <ul>
                <li><a href="index.php?action=create">Crear Código de Barras</a></li>
                <li><a href="index.php?action=report">Generar Reporte</a></li>
                <li><a href="index.php?action=home">Inicio</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <h2>Crear Código de Barras</h2>

        <form method="post">
            <div class="row mt-4">
                <div class="col-6 mb-4">
                    <label for=""><?= strftime('%d de %B de %Y'); ?></label>
                </div>
                <div class="col-3 mb-4">
                    <select name="destino" class="form-control">
                        <option disabled selected>Seleccionar destino</option>
                        <option value="Boveda">Boveda</option>
                    </select>
                </div>
                <div class="col-3 mb-4">
                    <select name="tipoCodigo" class="form-control" id="tipoCodigo">
                        <option disabled selected>Seleccionar tipo de código</option>
                        <option value="1">RR</option>
                        <option value="2">CP</option>
                    </select>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label for="">Último Registro:</label>
                        <input type="text" class="form-control" id="campo1" readonly name="lastRegister">

                        <input type="hidden" name="secuencial1" id="secuencial1">
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label for="">Registro Inicial:</label>
                        <input type="text" class="form-control" id="campo2" readonly>
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label for="">Cantidad a generar:</label>
                        <input type="number" name="cantidad" id="campo3" class="form-control" required>
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-group">
                        <label for="">Registro final:</label>
                        <input type="text" class="form-control" id="campo4" readonly>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-block" value="Generar Código" name="generar">
                    </div>
                </div>

                  <?php
                    $insertar = new Calculos();
                    $insertar->ctrCreateRegister();
                ?>
                
            </div>
        </form>
    </div>

    <script>

$(document).ready(function() {
    $("#tipoCodigo").on("change", function() {
        var tipoCodigo = $(this).val();
        mostrarUltimoRegistro(tipoCodigo);
    });

    function mostrarUltimoRegistro(tipoCodigo) {
        $.ajax({
            url: "../controllers/manejarSolicitudes.php",
            method: "POST",
            data: { tipoCodigo: tipoCodigo },
            dataType: "json",
            success: function(response) {
                $("#campo1").val(response.secuencial);
                $("#campo2").val(parseInt(response.secuencial) + 1);
                calcularRegistroFinal();
                $("#secuencial1").val(response.secuencial);
            }
        });
    }

    $("#campo3").on("input", function() {
        calcularRegistroFinal();
    });

    function calcularRegistroFinal() {
        var campo1 = parseInt($("#campo1").val());
        var campo3 = parseInt($("#campo3").val());
        var campo4 = campo1 + campo3;
        $("#campo4").val(campo4);

    }
});

    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
