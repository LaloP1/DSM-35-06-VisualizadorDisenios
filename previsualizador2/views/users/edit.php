   <!-- Incluimos un codigo php  -->
   <?php
    include __DIR__ . '/../../layout/menu.php';
    include __DIR__ . '/../../layout/header.php';
    ?>

        <div class="container-fluid">
            <div class="container">
                <h1>Formulario para modificar el registro</h1>
                <!--<form action="http://example2.com/crearproducto.php" method="post">-->
                <form action="" method="post">
                    <div class="mb-3">
                        <label class="form-label">Nuevo Nombre de Usuario</label>
                        <input type="text" class="form-control" name="nombre_prod" placeholder="escribe el nombre del usuario">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Apellido Paterno</label>
                        <input type="text" class="form-control" name="app" placeholder="escribe el apellido paterno">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Apellido Materno </label>
                        <input type="text" class="form-control" name="apm" placeholder="escribe el appellido materno">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Correo</label>
                        <input type="email" class="form-control" name="correo" placeholder="escribe el nuevo correo">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Nueva Contraseña </label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Estado</label>
                        <input type="email" class="form-control" name="correo" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Municipio</label>
                        <input type="email" class="form-control" name="correo" placeholder="">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nuevo Tipo de usuario</label>
                        <input type="email" class="form-control" name="correo" placeholder="">
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