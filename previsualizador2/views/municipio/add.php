   <!-- Incluimos un codigo php  -->
   <?php
    include __DIR__ . '/../../layout/menu.php';
    include __DIR__ . '/../../layout/header.php';
    ?>

        <div class="container-fluid">
            <div class="container">
                <h1>Formulario para agregar registros </h1>
                <!--<form action="http://example2.com/crearproducto.php" method="post">-->
                <form action="" method="post">
                    <div class="mb-3">
                        <label class="form-label">Nuevo Nombre del Municipio</label>
                        <input type="text" class="form-control" name="municipio" placeholder="escribe el nuevo nombre del municipio">
                    </div>
                    <div class="mb-3">
                        <label class="form-label"> Estado</label>
                        <input type="text" class="form-control" name="estado" placeholder="">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Seguir</button>
                    <br>
                </form>
            </div>
        </div>

    <?php
    include __DIR__ . '/../../layout/footer.php';
    ?>