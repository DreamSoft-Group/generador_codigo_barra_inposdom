<div class="container">
    <div class="mt-4">
        <h2>Re-Imprimir Código de Barras</h2>
        <hr>
        <div class="mt-4">
            <form method="post">
                <div class="row mt-4">
                    <div class="col-12 mb-4">
                    <label for=""><?= strftime('%d de %B de %Y'); ?></label>
                    </div>
                    <div class="col-3 mb-4">
                        <label for="">Destino:</label>
                        <select name="destino" class="form-control">
                            <option disabled selected>Seleccionar destino</option>
                            <option value="Boveda">Boveda</option>
                        </select>
                    </div>
                    <div class="col-3 mb-4">
                        <label for="">Tipo de código:</label>
                        <select name="tipoCodigo" class="form-control" id="tipoCodigo">
                            <option disabled selected>Seleccionar tipo de código</option>
                            <option value="1">RR</option>
                            <option value="2">CP</option>
                        </select>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label for="">Desde:</label>
                            <input type="text" class="form-control" name="desde">
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label for="">Hasta</label>
                            <input type="text" class="form-control" name="hasta">
                        </div>
                    </div>
                
                    <div class="col-12">
                        <div class="form-group">
                            <input type="submit" class="btn btn-success btn-block" value="Generar Código" name="reimprimir">
                        </div>
                    </div>
                </div>

                <?php
                    $reimprimir = new Calculos();
                    $reimprimir->ctrReimprimirLabel();
                ?>
            </form>
        </div>
    </div>
</div>
