<?php
function obtenerConexion() {
    $host = "127.0.0.1";
    $port = 3306;
    $socket = "";
    $user = "root";
    $password = "";
    $dbname = "ProyectoPhp"; // El nombre de la base de datos es con letras mayúsculas

    $con = new mysqli($host, $user, $password, $dbname, $port, $socket);

    // Verificar si hay algún error en la conexión
    if ($con->connect_error) {
        die("Error al conectar a la base de datos: " . $con->connect_error);
    }

    return $con;
}
?>
