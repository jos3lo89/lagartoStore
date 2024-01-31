<div class="main-container">

	<form class="box login" action="" method="POST" autocomplete="off">
		<p class="has-text-centered">
			<svg style="width: 6rem;" fill="none" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
				<path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"></path>
			</svg>
		</p>
		<h5 class="title is-5 has-text-centered">Inicia sesión con tu cuenta</h5>

		<?php
		if (isset($_POST['login_usuario']) && isset($_POST['login_clave'])) {
			$insLogin->iniciarSesionControlador();
		}
		?>

		<div class="field">
			<label class="label"><i class="fas fa-user-secret"></i> &nbsp; Usuario</label>
			<div class="control">
				<input class="input" type="text" name="login_usuario" pattern="[a-zA-Z0-9]{4,20}" maxlength="20" required placeholder="">
			</div>
		</div>

		<div class="field">
			<label class="label"><i class="fas fa-key"></i> &nbsp; Contraseña</label>
			<div class="control">
				<input class="input" type="password" name="login_clave" pattern="[a-zA-Z0-9$@.-]{7,100}" maxlength="100" required>
			</div>
		</div>

		<p class="has-text-centered mb-4 mt-3">
			<button type="submit" class="button is-info is-rounded">Ingresar</button>
		</p>

	</form>
</div>

<!-- <div>
	<p>joselo</p>
	<small>joselo33</small>
	<p>revisor</p>
	<small>revisor123</small>
</div> -->