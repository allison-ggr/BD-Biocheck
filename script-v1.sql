CREATE TABLE checador (
    id_checador INT PRIMARY KEY UNIQUE,
    sucursal VARCHAR(100)
);

CREATE TABLE empleados (
    id_usuario INT PRIMARY KEY UNIQUE,
    id_empleado INT,
    nombre_completo VARCHAR(100),
    tipo VARCHAR(5),
    id_checador INT,
    FOREIGN KEY (id_checador) REFERENCES checador(id_checador)
);

CREATE TABLE registros (
    id_registro INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    fecha TIMESTAMP, registrosuserschecadorusers
    id_empleado INT,
    id_checador INT,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_usuario),
    FOREIGN KEY (id_checador) REFERENCES checador(id_checador)
);

CREATE TABLE IF NOT EXISTS `administradores` (
	`id_admin` int AUTO_INCREMENT NOT NULL UNIQUE,
	`tipo` varchar(5) NOT NULL,
	`id_empleado` int NOT NULL,
	`password` varchar(255) NOT NULL,
	PRIMARY KEY (`id_admin`)
);

CREATE TABLE IF NOT EXISTS `catorcenas` (
	`id_catorcena` int AUTO_INCREMENT NOT NULL UNIQUE,
	`numero` int NOT NULL,
	`fecha_inicio` date NOT NULL,
	`fecha_fin` date NOT NULL,
	`year` varchar(4) NOT NULL,
	PRIMARY KEY (`id_catorcena`)
);

CREATE TABLE IF NOT EXISTS huellas (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    user_uid INT,
                    finger_id INT,
                    template BLOB,
                    FOREIGN KEY (user_uid) REFERENCES usuarios (uid)
);

CREATE TABLE IF NOT EXISTS usuarios (
                    uid INT PRIMARY KEY,
                    user_id VARCHAR(50),
                    name VARCHAR(100),
                    privilege VARCHAR(20),
                    password VARCHAR(50),
                    group_id VARCHAR(50)
                );