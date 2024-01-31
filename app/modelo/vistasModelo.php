<?php

namespace app\modelo;

class vistasModelo
{

	protected function obtenerVistasModelo($vista)
	{

		$listaBlanca = [
			"dashboard",
			"cajeroNuevo",
			"cajeroLista",
			"cajeroBuscar",
			"cajeroActualizar",
			"usuarioNuevo",
			"usuarioLista",
			"usuarioActualizar",
			"usuarioBuscar",
			"usuarioFoto",
			"clienteNuevo",
			"clienteLista",
			"clienteBuscar",
			"clienteActualizar",
			"categoriaNueva",
			"categoriaLista",
			"categoriaBuscar",
			"categoriaActualizar",
			"productoNuevo",
			"productoLista",
			"productoBuscar",
			"productActualizar",
			"productoFoto",
			"productoCategoria",
			"empresaDatos",
			"ventaNueva",
			"ventaLista",
			"ventaBuscar",
			"ventaDetalle",
			"cerrarSesion"
		];

		if (in_array($vista, $listaBlanca)) {
			if (is_file("./app/vista/content/" . $vista . "-vista.php")) {
				$contenido = "./app/vista/content/" . $vista . "-vista.php";
			} else {
				$contenido = "404";
			}
		} elseif ($vista == "login" || $vista == "index") {
			$contenido = "login";
		} else {
			$contenido = "404";
		}
		return $contenido;
	}
}
