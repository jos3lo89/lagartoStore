<?php

require_once "../../config/app.php";
require_once "../vista/inc/session_start.php";
require_once "../../autoload.php";

use app\controlador\empresaControlador;

if (isset($_POST['modulo_empresa'])) {

	$insEmpresa = new empresaControlador();

	if ($_POST['modulo_empresa'] == "registrar") {
		echo $insEmpresa->registrarEmpresaControlador();
	}

	if ($_POST['modulo_empresa'] == "actualizar") {
		echo $insEmpresa->actualizarEmpresaControlador();
	}
} else {
	session_destroy();
	header("Location: " . APP_URL . "login/");
}
