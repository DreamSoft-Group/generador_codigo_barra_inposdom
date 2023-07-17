<?php
require_once '../controllers/funcionController.php';

$controller = new BarcodeController();

if (isset($_GET['action'])) {
    $action = $_GET['action'];
    switch ($action) {
        case 'create':
            $controller->create();
            break;
        case 'report':
            $controller->generateReport();
            break;
        case 'salir':
            $controller->salir();
            break;
        default:
            $controller->home();
            break;
    }
} else {
    $controller->home();
}
