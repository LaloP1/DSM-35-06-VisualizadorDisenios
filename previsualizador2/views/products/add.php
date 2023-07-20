    <!-- Incluimos un codigo php  -->
    <?php
    include __DIR__ . '/../../layout/menu.php';
    include __DIR__ . '/../../layout/header.php';
    ?>

        <div class="container-fluid">
            <div class="container">
                <h1>Formulario de nuevo registro</h1>
                <!--<form action="http://example2.com/crearproducto.php" method="post">-->
                <form action="" method="post">
                    <div class="mb-3">
                        <label class="form-label">Nombre</label>
                        <input type="text" class="form-control" name="nombre_prod" placeholder="escribe el nombre del producto">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Descripción</label>
                        <input type="text" class="form-control" name="descripcion" placeholder="escribe la descripcion del producto">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Imagen</label>
                        <input type="text" class="form-control" name="imagen">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Categoria</label>
                        <input type="text" class="form-control" name="imagen">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Subcategoria</label>
                        <input type="text" class="form-control" name="imagen">
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