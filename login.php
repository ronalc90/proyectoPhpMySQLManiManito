<?php
// Archivo de conexión
include 'conexion.php';

// Iniciar sesión (si no lo has hecho ya)
session_start();

// Verificar si el usuario ya inició sesión
if (isset($_SESSION['usuario'])) {
    header("Location: home.php");
    exit();
}

// Verificar si se enviaron datos del formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Obtener la instancia de conexión a la base de datos
    $conexion = new Conexion();

    // Escapar los valores para prevenir ataques de inyección de SQL
    $username = $conexion->getConexion()->real_escape_string($username);
    $password = $conexion->getConexion()->real_escape_string($password);

    // Realizar la consulta para verificar el usuario y contraseña
    $query = "SELECT ID, TipoUsuario FROM usuarios_web WHERE nombre_usuario = '$username' AND contrasena = '$password'";
    $resultado = $conexion->consultar($query);

    // Verificar si se encontró un resultado y si coincide el usuario y contraseña
    if ($resultado->num_rows > 0) {
        // Si se encontró un resultado, obtener los datos del usuario
        $fila = $resultado->fetch_assoc();
        $usuarioID = $fila['ID'];
        $tipoUsuario = $fila['TipoUsuario'];

        // Guardar información del usuario en la sesión
        $_SESSION['usuario'] = array(
            'ID' => $usuarioID,
            'nombre_usuario' => $username,
            'TipoUsuario' => $tipoUsuario
        );

        // Redirigir a la página correspondiente según el TipoUsuario
        if ($tipoUsuario === "admin") {
            header("Location: home_admin.php");
            exit();
        } else {
            header("Location: home.php");
            exit();
        }
    } else {
        // Si no se encontró el usuario o la contraseña no coincide, mostrar un mensaje de error
        $mensajeError = "Usuario o contraseña incorrectos";
    }

    // Cerrar la conexión a la base de datos
    $conexion->cerrar();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Agregar enlaces a los archivos CSS de Bootstrap y tu archivo de estilos personalizados si los tienes -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css"> <!-- Tu archivo de estilos personalizados, si lo tienes -->
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h2 class="text-center">Iniciar sesión</h2>
                </div>
                <div class="card-body">
                    <form action="login.php" method="post">
                        <div class="form-group">
                            <label for="username">Nombre de usuario:</label>
                            <input type="text" id="username" name="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña:</label>
                            <input type="password" id="password" name="password" class="form-control" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Iniciar sesión</button>
                        </div>
                    </form>
                    <?php
                    // Mostrar el mensaje de error si existe
                    if (isset($mensajeError)) {
                        echo '<div class="alert alert-danger mt-3">' . $mensajeError . '</div>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Agregar enlaces a los archivos JS de Bootstrap si es necesario -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.9/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>