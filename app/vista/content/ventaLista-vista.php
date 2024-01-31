<div class="container is-fluid mb-6">
	<h1 class="title">Ventas</h1>
	<h2 class="subtitle"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de Ventas</h2>
</div>
<div class="container px-6">

	<div class="form-rest mb-6 mt-6"></div>

	<?php

	use app\controlador\ventaControlador;

	$insVenta = new ventaControlador();

	echo $insVenta->listarVentaControlador($url[1], 15, $url[0], "");

	include "./app/vista/inc/print_invoice_script.php";
	?>
</div>