<div class="container">
    <div class="mt-4">
        <h2>Informe x Localidad y Fecha</h2>
        <hr>
        <div class="mt-4">

            <div class="row">
                <div class="col-4">
                    <div class="form-group">
                        <label for="">Desde:</label>
                        <select name="tipoCodigo" id="infoCodigo" class="form-control" required>
                            <option value="" disabled selected>Seleccione código</option>
                            <option value="1"> RR </option>
                            <option value="2"> CP </option>
                        </select>
                    </div>
                </div>

                <div class="col-4">
                    <div class="form-group">
                        <label for="">Fecha:</label>
                        <input type="date" id="infoFecha" class="form-control">
                    </div>
                </div>

                <div class="col-2 mt-4">
                    <div class="form-group mt-2">
                        <button class="btn btn-success btn-block" id="generarInforme">Generar Informe</button>
                    </div>
                </div>

                <div class="col-2 mt-4">
                  <div class="form-group mt-2">
                <button class="btn btn-primary btn-block" id="imprimir">Imprimir</button>
                </div>
                </div>

                </div>
            </div>

            <div id="contenidoImprimir">
               


                <div class="row">

                    <table class="table mt-4">

                        <thead>
                            <tr>
                                <th>Desde</th>
                                <th>Hasta</th>
                                <th>Cantidad</th>
                                <th>Localidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="text" id="desde" style="border: none" readonly></td>
                                <td><input type="text" id="hasta" style="border: none" readonly></td>
                                <td><input type="text" id="cantidad" style="border: none" readonly></td>
                                <td><input type="text" id="destino" style="border: none" readonly></td>
                            </tr>
                            <tr>
                               <td colspan="2"><strong>Total de cantidad Impresas cant x 3</strong> </td> 
                               <td colspan="2"><strong><input type="text" id="cantidadTotal" style="border: none" readonly></strong></td>

                            </tr>
                        </tbody>
                        
                    </table>

                </div>   

            </div>
            

            


        </div>
    </div>
</div>

