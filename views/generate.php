<div class="container">
    <h2>Códigos de Barras Generados</h2>
    <div class="barcode">
        <h3>Primer tipo de código de barras: <?php echo $barcode; ?></h3>
        <img src="../barcode.php?code=<?php echo $barcode; ?>" alt="Código de Barras 1">
    </div>
    <div class="barcode">
        <h3>Segundo tipo de código de barras: <?php echo $barcodeWithSecurity; ?></h3>
        <img src="../barcode.php?code=<?php echo $barcodeWithSecurity; ?>" alt="Código de Barras 2">
    </div>
</div>
