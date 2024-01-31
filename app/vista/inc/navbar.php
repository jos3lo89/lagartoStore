<div class="full-width navBar">
    <div class="full-width navBar-options">
        <!-- <i class="fas fa-exchange-alt fa-fw" id="btn-menu"></i> -->
        <svg id="btn-menu" style="width: 35px; cursor: pointer; margin-left: 15px;" data-slot="icon" fill="none" stroke-width="1.5" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25H12"></path>
        </svg>
        <nav class="navBar-options-list">
            <ul class="list-unstyle">
                <li class="text-condensedLight noLink">
                    <a class="btn-exit" href="<?php echo APP_URL . "login/"; ?>">
                        <i class="fas fa-power-off"></i>
                    </a>
                </li>
                <li class="text-condensedLight noLink">
                    <small><?php echo $_SESSION['usuario']; ?></small>
                </li>
                <li class="noLink">
                    <?php
                    if (is_file("./app/vista/fotos/" . $_SESSION['foto'])) {
                        echo '<img class="is-rounded img-responsive" src="' . APP_URL . 'app/vista/fotos/' . $_SESSION['foto'] . '">';
                    } else {
                        echo '<img class="is-rounded img-responsive" src="' . APP_URL . 'app/vista/fotos/default.png">';
                    }
                    ?>
                </li>
            </ul>
        </nav>
    </div>
</div>

<style>

</style>