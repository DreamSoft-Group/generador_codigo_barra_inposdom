<?php

//require_once '../models/BarcodeModel.php';


use Barcode\BarcodeGenerator;

class BarcodeController
{
    private $barcodeModel;

    public function __construct()
    {
        $this->barcodeModel = new BarcodeModel();
    }

    public function home()
    {
        require_once '../views/home.php';
    }

    public function create()
    {
        require_once '../views/create.php';
    }

    
    public function generateReport()
    {
        $barcodes = $this->barcodeModel->generateBarcodesReport();

        require_once '../views/report.php';
    }

    public function salir()
    {
        require_once '../views/login_form.php';
    }

   

}
