<?php
//controllers
require_once 'controllers/usuario.controller.php';
require_once 'controllers/calculos.controller.php';
require_once 'controllers/codigoBarra.controller.php';
require_once 'controllers/funcionController.php';
require_once 'controllers/usuario.controller.php';


//models
require_once 'models/usuario.model.php';
require_once 'models/calculos.model.php';
require_once 'models/BarcodeModel.php';
require_once 'models/conexion.php';

//Librerias
require_once 'tcpdf/tcpdf.php';
require_once 'tcpdf/tcpdf_barcodes_1d.php';




include_once 'views/plantilla.php';
