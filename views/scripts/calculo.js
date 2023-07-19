$(document).ready(function() {

    $("#tipoCodigo").on("change", function() {
        var tipoCodigo = $(this).val();
        mostrarUltimoRegistro(tipoCodigo);
    });

    function mostrarUltimoRegistro(tipoCodigo) {
        $.ajax({
            url: "ajax/calculos.ajax.php",
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

    // Variables globales para almacenar los valores obtenidos
    var desde;
    var hasta;
    var cantidad;
    var destino;
    var cantidadTotal;
    var fecha1;
    var codigo1;

    $("#generarInforme").on("click", function() {
        var fecha = $("#infoFecha").val();
        var codigo = $("#infoCodigo").val();
        var datos = new FormData();
        datos.append("codigo", codigo);
        datos.append("fecha", fecha);

        $.ajax({
            url: 'ajax/calculos.ajax.php',
            method: 'post',
            data: datos,
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function(response) {
                desde = response[0]['Desde'];
                hasta = response[0]['Hasta'];
                cantidad = response[0]['cantidad'];
                destino = response[0]['destino'];
                cantidadTotal = response[0]['CantidadTotal'];
                fecha1 = response[0]['create_date'];
                codigo1 = response[0]['codigo'];

                

                // Actualiza los campos en el formulario (opcional)
                $("#fecha").val(fecha1);
                $("#codigo").val(codigo1);
                $("#desde").val(desde);
                $("#hasta").val(hasta);
                $("#cantidad").val(cantidad);
                $("#destino").val(destino);
                $("#cantidadTotal").val(cantidadTotal);
            
            },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log("Error en la solicitud AJAX: " + textStatus + " - " + errorThrown);
        }
        });
    });


    $("#imprimir").on("click", function() {
    // Obtener el contenido que deseas imprimir
    var contenidoImprimir = $("#contenidoImprimir").html();

    // Abrir una ventana emergente
    var ventanaImpresion = window.open('', '', 'height=500,width=800');

    // Escribir el contenido en la ventana emergente
    ventanaImpresion.document.write('<html><head><title>Reporte</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"></head><body>');
    ventanaImpresion.document.write('<h2>Informe de impresión</h2>');
    ventanaImpresion.document.write('<p>Reporte por localidad y fecha</p>');
    ventanaImpresion.document.write('<div class="container"><table class="table mt-4">');
    ventanaImpresion.document.write('<thead><tr>');
    ventanaImpresion.document.write('<td colspan="2"><strong>Tipo de Código:</strong>  ' + codigo1 + '  </td>');
    ventanaImpresion.document.write('<td colspan="2"><strong>Reporte de fecha:</strong>  ' + fecha1.substring(0,10) + '  </td></tr>');
    ventanaImpresion.document.write('<tr><th>Desde</th>');
    ventanaImpresion.document.write('<th>Hasta</th>');
    ventanaImpresion.document.write('<th>Cantidad</th>');
    ventanaImpresion.document.write('<th>Localidad</th>');
    ventanaImpresion.document.write('</tr></thead><tbody>');
    ventanaImpresion.document.write('<tr><td>' + desde + '</td>');
    ventanaImpresion.document.write('<td>' + hasta + '</td>');
    ventanaImpresion.document.write('<td>' + cantidad + '</td>');
    ventanaImpresion.document.write('<td>' + destino + '</td>');
    ventanaImpresion.document.write('</tr>');
    ventanaImpresion.document.write('<tr>');
    ventanaImpresion.document.write('<td colspan="2"><strong>Total de cantidad Impresas cant x 3</strong></td>');
    ventanaImpresion.document.write('<td colspan="2">' + cantidadTotal + '</td>');
    ventanaImpresion.document.write('</tr></tbody>');
    ventanaImpresion.document.write('</table></div>');
    ventanaImpresion.document.write('</body></html>');

    // Cerrar el documento después de imprimir
    ventanaImpresion.document.close();

    // Esperar un breve momento para asegurar que el contenido se haya cargado en la ventana emergente
    setTimeout(function() {
        // Imprimir el contenido en la ventana emergente
        ventanaImpresion.print();
    }, 500);
    });


    // Obtenemos la URL actual
    var currentUrl = window.location.href;

    // Verificamos qué vista está abierta según la URL y le agregamos la clase "active"
    if (currentUrl.includes("create")) {
        $(".nav-link[href='create']").addClass("active");
    } else if (currentUrl.includes("report")) {
        $(".nav-link[href='report']").addClass("active");
    } else if (currentUrl.includes("reimpresion")) {
        $(".nav-link[href='reimpresion']").addClass("active");
    } else if (currentUrl.includes("salir")) {
        $(".nav-link[href='salir']").addClass("active");
    }

});