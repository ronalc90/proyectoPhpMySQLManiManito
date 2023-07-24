<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Enlaces a los archivos CSS de Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-4">
                <button class="btn btn-primary">Postulación</button>
            </div>
            <div class="col-md-4">
                <button class="btn btn-primary">Proponer Plaza</button>
            </div>
            <div class="col-md-4">
                <button class="btn btn-primary">Mis Postulaciones</button>
            </div>
        </div>
        <form action="procesar_busqueda.php" method="get" class="mt-4">
            <div class="form-group">
                <label for="busqueda">Búsqueda:</label>
                <input type="text" id="busqueda" name="busqueda" class="form-control" placeholder="Vinculación docente" required>
            </div>
            <button type="submit" class="btn btn-primary">Buscar</button>
        </form>
        <p class="mt-4">Búsqueda Avanzada</p>
        <form action="procesar_busqueda_avanzada.php" method="get">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="pais">País:</label>
                    <input type="text" id="pais" name="pais" class="form-control" placeholder="Ingrese el país">
                </div>
                <div class="form-group col-md-4">
                    <label for="ciudad">Ciudad:</label>
                    <input type="text" id="ciudad" name="ciudad" class="form-control" placeholder="Ingrese la ciudad">
                </div>
                <div class="form-group col-md-4">
                    <label for="tipo_empresa">Tipo de Empresa:</label>
                    <input type="text" id="tipo_empresa" name="tipo_empresa" class="form-control" placeholder="Ingrese el tipo de empresa">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="empresa">Empresa:</label>
                    <input type="text" id="empresa" name="empresa" class="form-control" placeholder="Ingrese el nombre de la empresa">
                </div>
                <div class="form-group col-md-4">
                    <label for="sistema">Sistema:</label>
                    <input type="text" id="sistema" name="sistema" class="form-control" placeholder="Ingrese el nombre del sistema">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Buscar</button>
        </form>
        <p class="mt-4">Elige tus preferencias:</p>
        <div class="btn-group">
            <button class="btn btn-primary">Wed</button>
            <button class="btn btn-primary">Marketing</button>
            <button class="btn btn-primary">Programación</button>
            <button class="btn btn-primary">Economía</button>
            <button class="btn btn-primary">Base de datos</button>
            <button class="btn btn-primary">Rendimiento</button>
            <button class="btn btn-primary">Innovación</button>
        </div>
        <hr class="mt-4">
        <button type="submit" class="btn btn-primary">Filtrar</button>
    </div>

    <!-- Enlaces a los archivos JS de Bootstrap si es necesario -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.9/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
