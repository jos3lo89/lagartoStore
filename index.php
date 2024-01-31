<?php

require_once "./config/app.php";
require_once "./autoload.php";

/* Iniciando sesion */
require_once "./app/vista/inc/session_start.php";

if (isset($_GET['vista'])) {
    $url = explode("/", $_GET['vista']);
} else {
    $url = ["login"];
}

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <?php require_once "./app/vista/inc/head.php"; ?>
</head>

<body>
    <?php

    use app\controlador\vistasControlador;
    use app\controlador\loginControlador;

    $insLogin = new loginControlador();

    $vistaControlador = new vistasControlador();
    $vista = $vistaControlador->obtenerVistasControlador($url[0]);

    if ($vista == "login" || $vista == "404") {
        require_once "./app/vista/content/" . $vista . "-vista.php";
    } else {
    ?>
        <main class="page-container">
            <?php
            # Cerrar sesion #
            if ((!isset($_SESSION['id']) || $_SESSION['id'] == "") || (!isset($_SESSION['usuario']) || $_SESSION['usuario'] == "")) {
                $insLogin->cerrarSesionControlador();
                exit();
            }
            require_once "./app/vista/inc/navlateral.php";
            ?>
            <section class="full-width pageContent scroll" id="pageContent">
                <?php
                require_once "./app/vista/inc/navbar.php";
                require_once $vista;
                ?>
            </section>
        </main>
    <?php
    }

    require_once "./app/vista/inc/script.php";
    ?>
</body>

</html>