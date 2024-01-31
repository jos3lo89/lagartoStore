<div class="container is-fluid">
	<h1 class="title">Inicio</h1>
	<!-- <div class="columns is-flex is-justify-content-center">
		<figure class="image is-128x128"> -->
			<?php
			// if (is_file("./app/vista/fotos/" . $_SESSION['foto'])) {
			// 	echo '<img class="is-rounded" src="' . APP_URL . 'app/vista/fotos/' . $_SESSION['foto'] . '">';
			// } else {
			// 	echo '<img class="is-rounded" src="' . APP_URL . 'app/vista/fotos/default.png">';
			// }
			?>
		<!-- </figure>
	</div> -->
	<!-- <div class="columns is-flex is-justify-content-center">
		<h2 class="subtitle">¡Bienvenido <?php # echo $_SESSION['nombre'] . " " . $_SESSION['apellido']; ?>!</h2>
	</div> -->
</div>
<?php
$total_cajas = $insLogin->seleccionarDatos("Normal", "caja", "caja_id", 0);

$total_usuarios = $insLogin->seleccionarDatos("Normal", "usuario WHERE usuario_id!='1' AND usuario_id!='" . $_SESSION['id'] . "'", "usuario_id", 0);

$total_clientes = $insLogin->seleccionarDatos("Normal", "cliente WHERE cliente_id!='1'", "cliente_id", 0);

$total_categorias = $insLogin->seleccionarDatos("Normal", "categoria", "categoria_id", 0);

$total_productos = $insLogin->seleccionarDatos("Normal", "producto", "producto_id", 0);

$total_ventas = $insLogin->seleccionarDatos("Normal", "venta", "venta_id", 0);
?>
<div class="container pb-5 pt-5 mt-5 dash_fondo">

	<div class="columns pb-6">
		<div class="column">
			<nav class="level is-mobile">

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>cajeroLista/" class="dashBoxes dash1">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M2.25 18.75a60.07 60.07 0 0115.797 2.101c.727.198 1.453-.342 1.453-1.096V18.75M3.75 4.5v.75A.75.75 0 013 6h-.75m0 0v-.375c0-.621.504-1.125 1.125-1.125H20.25M2.25 6v9m18-10.5v.75c0 .414.336.75.75.75h.75m-1.5-1.5h.375c.621 0 1.125.504 1.125 1.125v9.75c0 .621-.504 1.125-1.125 1.125h-.375m1.5-1.5H21a.75.75 0 00-.75.75v.75m0 0H3.75m0 0h-.375a1.125 1.125 0 01-1.125-1.125V15m1.5 1.5v-.75A.75.75 0 003 15h-.75M15 10.5a3 3 0 11-6 0 3 3 0 016 0zm3 0h.008v.008H18V10.5zm-12 0h.008v.008H6V10.5z"></path>
						</svg>
						<p class="heading"> &nbsp; Cajas</p>
						<p class="is-size-4"><?php echo $total_cajas->rowCount(); ?></p>
					</a>
				</div>

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>usuarioLista/" class="dashBoxes dash2">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M18 18.72a9.094 9.094 0 003.741-.479 3 3 0 00-4.682-2.72m.94 3.198l.001.031c0 .225-.012.447-.037.666A11.944 11.944 0 0112 21c-2.17 0-4.207-.576-5.963-1.584A6.062 6.062 0 016 18.719m12 0a5.971 5.971 0 00-.941-3.197m0 0A5.995 5.995 0 0012 12.75a5.995 5.995 0 00-5.058 2.772m0 0a3 3 0 00-4.681 2.72 8.986 8.986 0 003.74.477m.94-3.197a5.971 5.971 0 00-.94 3.197M15 6.75a3 3 0 11-6 0 3 3 0 016 0zm6 3a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0zm-13.5 0a2.25 2.25 0 11-4.5 0 2.25 2.25 0 014.5 0z"></path>
						</svg>
						<p class="heading"> &nbsp; Usuarios</p>
						<p class="is-size-4"><?php echo $total_usuarios->rowCount(); ?></p>
					</a>
				</div>

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>clienteLista/" class="dashBoxes dash3">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z"></path>
						</svg>
						<p class="heading"> &nbsp; Clientes</p>
						<p class="is-size-4"><?php echo $total_clientes->rowCount(); ?></p>
					</a>
				</div>

			</nav>
		</div>
	</div>

	<div class="columns pt-3">
		<div class="column">
			<nav class="level is-mobile">

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>categoriaLista/" class="dashBoxes dash4">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M9.568 3H5.25A2.25 2.25 0 003 5.25v4.318c0 .597.237 1.17.659 1.591l9.581 9.581c.699.699 1.78.872 2.607.33a18.095 18.095 0 005.223-5.223c.542-.827.369-1.908-.33-2.607L11.16 3.66A2.25 2.25 0 009.568 3z"></path>
							<path stroke-linecap="round" stroke-linejoin="round" d="M6 6h.008v.008H6V6z"></path>
						</svg>
						<p class="heading"> &nbsp; Categorías</p>
						<p class="is-size-4"><?php echo $total_categorias->rowCount(); ?></p>
					</a>
				</div>

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>productoLista/" class="dashBoxes dash5">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9"></path>
						</svg>
						<p class="heading">&nbsp; Productos</p>
						<p class="is-size-4"><?php echo $total_productos->rowCount(); ?></p>
					</a>
				</div>

				<div class="level-item has-text-centered">
					<a href="<?php echo APP_URL; ?>ventaLista/" class="dashBoxes dash6">
						<svg fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
							<path stroke-linecap="round" stroke-linejoin="round" d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z"></path>
						</svg>
						<p class="heading">&nbsp; Ventas</p>
						<p class="is-size-4"><?php echo $total_ventas->rowCount(); ?></p>
					</a>
				</div>
				
			</nav>
		</div>
	</div>

</div>


