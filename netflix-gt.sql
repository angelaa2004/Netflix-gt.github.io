CREATE TABLE `tbl_actor_principal` (
 `id_actor` int NOT NULL,
 `nombre` varchar(25) NOT NULL,
 `edad` int NOT NULL,
 `nacionalidad` varchar(25) NOT NULL,
 `fecha_nacimiento` int NOT NULL,
 PRIMARY KEY (`id_actor`)
) ENGINE=InnoDB ;


CREATE TABLE `tbl_director` (
 `id_director` int NOT NULL,
 `nombre` varchar(25) NOT NULL,
 `edad` int NOT NULL,
 `nacionalidad` varchar(25) NOT NULL,
 `fecha_nacimiento` int NOT NULL,
 PRIMARY KEY (`id_director`)
) ENGINE=InnoDB ;


CREATE TABLE `tbl_enc_pelicula` (
 `nombre_pelicula` varchar(25) NOT NULL,
 `porcentaje_coincidencia` int NOT NULL,
 `tiempo_duracion` int NOT NULL,
 PRIMARY KEY (`nombre_pelicula`)
) ENGINE=InnoDB ;



CREATE TABLE `tbl_detalle_pelicula` (
 `codigo_pelicula` int NOT NULL,
 `nombre_pelicula` varchar(25) NOT NULL,
 `descripcion` varchar(100) NOT NULL,
 `id_actor` int NOT NULL,
 `id_director` int NOT NULL,
 PRIMARY KEY (`codigo_pelicula`),
FOREIGN KEY (`id_actor`) REFERENCES `tbl_actor_principal`(`id_actor`),
FOREIGN KEY (`id_director`) REFERENCES `tbl_director`(`id_director`)
) ENGINE=InnoDB;