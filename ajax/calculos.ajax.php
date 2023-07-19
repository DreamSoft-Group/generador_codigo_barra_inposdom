<?php

require_once '../controllers/calculos.controller.php';
require_once '../models/calculos.model.php';

class ajaxCalculos
{
	public $codigo;
	public $fecha;

	public function ajaxGenerarInforme()
	{
		$fecha = $this->fecha;
		$codigo = $this->codigo;

		$respuesta = Calculos::ctrMostrarInforme($codigo, $fecha);
		echo json_encode($respuesta);
	}
}

Calculos::ctrShowLastRegister();


if(isset($_POST['codigo']) && $_POST['fecha'])
{
	$mostrarInforme = new ajaxCalculos();
	$mostrarInforme->codigo = $_POST['codigo'];
	$mostrarInforme->fecha = $_POST['fecha'];
	$mostrarInforme->ajaxGenerarInforme();
}

