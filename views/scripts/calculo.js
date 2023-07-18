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
});
