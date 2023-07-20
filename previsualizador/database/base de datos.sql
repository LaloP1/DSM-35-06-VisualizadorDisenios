CREATE DATABASE PagWeb;
USE PagWeb;

CREATE TABLE `administrador` (
  `idAdministrador` INT NOT NULL,
  `Nombre` VARCHAR(50) DEFAULT NULL,
  `ApellidoPaterno` VARCHAR(50) DEFAULT NULL,
  `ApellidoMaterno` VARCHAR(50) DEFAULT NULL,
  `Contraseña` VARCHAR(20) DEFAULT NULL,
  `CorreoElectronico` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (idAdministrador)
);

CREATE TABLE `color` (
  `idColor` INT NOT NULL,
  `Color` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (idColor)
);

CREATE TABLE `usuario` (
  `idUsuario` INT(11) NOT NULL,
  `Nombre` VARCHAR(50) DEFAULT NULL,
  `ApellidoPaterno` VARCHAR(50) DEFAULT NULL,
  `ApellidoMaterno` VARCHAR(50) DEFAULT NULL,
  `Contraseña` VARCHAR(20) DEFAULT NULL,
  `CorreoElectronico` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (idUsuario)
);

CREATE TABLE `producto` (
  `idProducto` INT NOT NULL,
  `Descripcion` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (idProducto),
  `idColor1` INT(11) NOT NULL,
  CONSTRAINT fkprod_col
  FOREIGN KEY (idColor1) REFERENCES color(idColor)
  
);


CREATE TABLE `usu_prod` (
  `idUsuario1` INT(11) NOT NULL,
  `idProducto1` INT(11) NOT NULL,
  CONSTRAINT fkusu_prod
  FOREIGN KEY (idUsuario1) REFERENCES usuario(idUsuario),
  CONSTRAINT fkprod_usu
  FOREIGN KEY (idProducto1) REFERENCES producto(idProducto)
);

CREATE TABLE `prod_col` (
  `idColor1` INT(11) NOT NULL,
  `idProducto1` INT(11) NOT NULL,
  CONSTRAINT fkprod_color
  FOREIGN KEY (idColor1) REFERENCES color(idColor),
  CONSTRAINT fkcolor_prod
  FOREIGN KEY (idProducto1) REFERENCES producto(idProducto)
);

CREATE TABLE `admin_producto` (
  `idAdministrador1` INT(11) NOT NULL,
  `idProducto1` INT(11) NOT NULL,
  CONSTRAINT fkadmin_prod
  FOREIGN KEY (idAdministrador1) REFERENCES administrador(idAdministrador),
  CONSTRAINT fkprod_admin
  FOREIGN KEY (idProducto1) REFERENCES producto(idProducto)
);

----------------------------Inserción de Datos---------------------------
USE PagWeb1;
INSERT INTO usuario
VALUES
(1, 'Liam', 'Smith', 'Johnson', 'contraseña1', 'usuario1@example.com'),
(2, 'Noah', 'Jones', 'Williams', 'contraseña2', 'usuario2@example.com'),
(3, 'Oliver', 'Brown', 'Taylor', 'contraseña3', 'usuario3@example.com'),
(4, 'William', 'Miller', 'Clark', 'contraseña4', 'usuario4@example.com'),
(5, 'Elijah', 'Davis', 'Hall', 'contraseña5', 'usuario5@example.com'),
(6, 'James', 'Garcia', 'Allen', 'contraseña6', 'usuario6@example.com'),
(7, 'Benjamin', 'Rodriguez', 'Young', 'contraseña7', 'usuario7@example.com'),
(8, 'Lucas', 'Martinez', 'Walker', 'contraseña8', 'usuario8@example.com'),
(9, 'Henry', 'Lopez', 'Lewis', 'contraseña9', 'usuario9@example.com'),
(10, 'Alexander', 'Hernandez', 'Wright', 'contraseña10', 'usuario10@example.com'),
(11, 'Sebastian', 'Gonzalez', 'Hill', 'contraseña11', 'usuario11@example.com'),
(12, 'Jack', 'Perez', 'Scott', 'contraseña12', 'usuario12@example.com'),
(13, 'Aiden', 'Sanchez', 'Green', 'contraseña13', 'usuario13@example.com'),
(14, 'Owen', 'Rivera', 'Adams', 'contraseña14', 'usuario14@example.com'),
(15, 'Samuel', 'Torres', 'Baker', 'contraseña15', 'usuario15@example.com'),
(16, 'Matthew', 'Mitchell', 'Harris', 'contraseña16', 'usuario16@example.com'),
(17, 'Joseph', 'Robinson', 'Turner', 'contraseña17', 'usuario17@example.com'),
(18, 'Levi', 'Clark', 'Lewis', 'contraseña18', 'usuario18@example.com'),
(19, 'David', 'Lee', 'Taylor', 'contraseña19', 'usuario19@example.com'),
(20, 'Daniel', 'Walker', 'Wright', 'contraseña20', 'usuario20@example.com'),
(21, 'Michael', 'Hall', 'Allen', 'contraseña21', 'usuario21@example.com'),
(22, 'Andrew', 'Young', 'Martin', 'contraseña22', 'usuario22@example.com'),
(23, 'William', 'White', 'Hernandez', 'contraseña23', 'usuario23@example.com'),
(24, 'James', 'Moore', 'Smith', 'contraseña24', 'usuario24@example.com'),
(25, 'Logan', 'Harris', 'Wilson', 'contraseña25', 'usuario25@example.com'),
(26, 'Daniel', 'Lewis', 'Clark', 'contraseña26', 'usuario26@example.com'),
(27, 'Oliver', 'King', 'Anderson', 'contraseña27', 'usuario27@example.com'),
(28, 'Joseph', 'Taylor', 'Walker', 'contraseña28', 'usuario28@example.com'),
(29, 'Sophia', 'Johnson', 'Roberts', 'contraseña51', 'usuario51@example.com'),
(30, 'Olivia', 'Williams', 'Walker', 'contraseña52', 'usuario52@example.com'),
(31, 'Emma', 'Brown', 'Harris', 'contraseña53', 'usuario53@example.com'),
(32, 'Ava', 'Jones', 'Garcia', 'contraseña54', 'usuario54@example.com'),
(33, 'Isabella', 'Miller', 'Clark', 'contraseña55', 'usuario55@example.com'),
(34, 'Mia', 'Davis', 'Allen', 'contraseña56', 'usuario56@example.com'),
(35, 'Charlotte', 'Smith', 'Hall', 'contraseña57', 'usuario57@example.com'),
(36, 'Amelia', 'Anderson', 'Young', 'contraseña58', 'usuario58@example.com'),
(37, 'Harper', 'Wilson', 'Martin', 'contraseña59', 'usuario59@example.com'),
(38, 'Evelyn', 'Martinez', 'Lewis', 'contraseña60', 'usuario60@example.com'),
(39, 'Liam', 'Taylor', 'Johnson', 'contraseña61', 'usuario61@example.com'),
(40, 'Noah', 'Miller', 'Williams', 'contraseña62', 'usuario62@example.com'),
(41, 'Oliver', 'Brown', 'Clark', 'contraseña63', 'usuario63@example.com'),
(42, 'William', 'Garcia', 'Hall', 'contraseña64', 'usuario64@example.com'),
(43, 'Elijah', 'Johnson', 'Allen', 'contraseña65', 'usuario65@example.com'),
(44, 'James', 'Smith', 'Young', 'contraseña66', 'usuario66@example.com'),
(45, 'Benjamin', 'Davis', 'Walker', 'contraseña67', 'usuario67@example.com'),
(46, 'Lucas', 'Williams', 'Martin', 'contraseña68', 'usuario68@example.com'),
(47, 'Henry', 'Brown', 'Lewis', 'contraseña69', 'usuario69@example.com'),
(48, 'Alexander', 'Jones', 'Harris', 'contraseña70', 'usuario70@example.com'),
(49,'Jorge', 'Guerrero', 'Ramirez', '123456', 'jorge.guerrero@gmail.com'),
(50,'Susana', 'Martinez', 'Lopez', '123456', 'susana.martinez@gmail.com');

INSERT INTO administrador
VALUES
('1','Jorge', 'Guerrero', 'Ramirez', '123456', 'jorge.guerrero@gmail.com'),
('2','Susana', 'Martinez', 'Lopez', '123456', 'susana.martinez@gmail.com'),
('3','Daniel', 'Rodriguez', 'Sanchez', '123456', 'daniel.rodriguez@gmail.com'),
('4', 'Luis', 'Aguilar', 'Castillo', '123456', 'luis.aguilar@gmail.com');

INSERT INTO color
VALUES
('1','Negro'),
('2', 'Blanco'),
('3','Rojo'),
('4','Verde'),
('5','Azul'),
('6','Amarrillo'),
('7','Rosa'),
('8','Morado'),
('9','Naranja'),
('10','Cafe'),
('11','Gris'),
('12','Dorado');

INSERT INTO producto
VALUES
('1','playera', 1),
('2','playera', 2),
('3','Taza', 3),
('4','Taza', 4),
('5','Playera', 5),
('6','playera', 6),
('7','Sudadera', 7),
('8','Playera', 8),
('9','Mochila', 9),
('10','Mochila', 10);