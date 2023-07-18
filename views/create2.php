

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