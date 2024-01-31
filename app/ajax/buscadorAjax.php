<?php

require_once "../../config/app.php";
require_once "../vista/inc/session_start.php";
require_once "../../autoload.php";

use app\controlador\busquedaControlador;

if (isset($_POST['modulo_buscador'])) {

	$insBuscador = new busquedaControlador();

	if ($_POST['modulo_buscador'] == "buscar") {
		echo $insBuscador->iniciarBuscadorControlador();
	}

	if ($_POST['modulo_buscador'] == "eliminar") {
		echo $insBuscador->eliminarBuscadorControlador();
	}
} else {
	session_destroy();
	header("Location: " . APP_URL . "login/");
}
