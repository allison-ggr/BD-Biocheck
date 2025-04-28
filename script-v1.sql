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
    fecha TIMESTAMP, 
    id_empleado INT,
    id_checador INT,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_usuario),
    FOREIGN KEY (id_checador) REFERENCES checador(id_checador)
);