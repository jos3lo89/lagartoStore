<?php

namespace app\controlador;

use app\modelo\vistasModelo;

class vistasControlador extends vistasModelo
{

	public function obtenerVistasControlador($vista)
	{
		if ($vista != "") {
			$respuesta = $this->obtenerVistasModelo($vista);
		} else {
			$respuesta = "login";
		}
		return $respuesta;
	}
}
