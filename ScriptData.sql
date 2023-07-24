CREATE DATABASE ProyectoPhp;

USE ProyectoPhp;

CREATE TABLE usuarios_web (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
	TipoUsuario VARCHAR(100) NOT NULL
);