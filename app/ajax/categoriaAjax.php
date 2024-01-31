<?php

require_once "../../config/app.php";
require_once "../vista/inc/session_start.php";
require_once "../../autoload.php";

use app\controlador\categoriaControlador;

if (isset($_POST['modulo_categoria'])) {

	$insCategory = new categoriaControlador();

	if ($_POST['modulo_categoria'] == "registrar") {
		echo $insCategory->registrarCategoriaControlador();
	}

	if ($_POST['modulo_categoria'] == "eliminar") {
		echo $insCategory->eliminarCategoriaControlador();
	}

	if ($_POST['modulo_categoria'] == "actualizar") {
		echo $insCategory->actualizarCategoriaControlador();
	}
} else {
	session_destroy();
	header("Location: " . APP_URL . "login/");
}
