USE mydb;

/*------------------------
- Insert de tabla personas
------------------------*/
INSERT INTO personas (idPersona, Nombre, Apellido, Teléfono, Email, DNI, Dirección)
VALUES
(1, 'Pedro', 'González', '3571859462', 'pedroG@gmail.com', '21458754', 'Calle Azul 856'),
(2, 'Marta', 'Perez', '3571567895', 'martaP@gmail.com', '19875411', 'Calle Roja 428'),
(3, 'Juan', 'Ramirez', '3571963574', 'juanR@gmail.com', '31546802', 'Calle Roja 215'),
(4, 'Paula', 'Garcia', '3571345687', 'paulaG@gmail.com', '35645781', 'Calle Azul 1024'),
(5, 'Martin', 'Fernandez', '3571201396', 'martinF@gmail.com', '39701455', 'Calle Roja 126'),
(6, 'Sofia', 'Lopez', '3571645824', 'sofiaF@gmail.com', '32750989', 'Calle Verde 637'),
(7, 'Facundo', 'Ramirez', '3571896547', 'facundoR@gmail.com', '32568741', 'Calle Verde 235'),
(8, 'Renato', 'Gomez', '3571635421', 'renatoG@gmail.com', '19879630', 'Calle Verde 1221'),
(9, 'Ximena', 'Lujan', '3571195347', 'ximenaL@gmail.com', '41285941', 'Calle Azul 425'),
(10, 'Pedro', 'Medina', '3571328476', 'pedroM@gmail.com', '22345871', 'Calle Azul 132'),
(11, 'Lucas', 'Aguirre', '3571421860', 'lucasA@gmail.com', '39645123', 'Calle Verde 1354'),
(12, 'Julieta', 'Fernandez', '3571468134', 'julietaF@gmail.com', '34687921', 'Calle Azul 2354');


/*-------------------------
- Insert de tabla artesanos
-------------------------*/
INSERT INTO artesanos (idArtesano, idPersona)
VALUES
(1,1),
(2,3),
(3,4),
(4,5),
(5,6),
(6,8),
(7,9),
(8,10),
(9,11);


/*----------------------
- Insert de tabla admins
----------------------*/
INSERT INTO admins (idAdmin, idPersona)
VALUES
(1,2),
(2,7),
(3,12);


/*----------------------
- Insert de tabla ferias
----------------------*/
INSERT INTO ferias (idFeria, Nombre, Dirección, CantPuestos, FechaRealización)
VALUES
(1, 'Gran Feria Navideña', 'Plaza San Martin - Rio Tercero', '10', '2022-12-23'),
(2, 'Artesanos y Emprendedores', 'Barrio Sarmiento - Rio Tercero', '10', '2023-07-07'),
(3, 'Feria en la Plaza', 'Plaza San Martin - Rio Tercero', '10', '2023-11-11');


/*-----------------------------
- Insert de tabla inscripciones
-----------------------------*/
INSERT INTO inscripciones (idInscripción, idArtesano, idFeria, Puesto, Precio, FecInscripción)
VALUES 
(1, 4, 1, '8', '1500', '2022-12-08'),
(2, 1, 1, '2', '1500','2022-12-15'),
(3, 9, 1, '3','1500','2022-12-20'),
(4, 3, 1, '5', '1500', '2022-12-21'),
(5, 6, 1, '10', '1500', '2022-12-21');

INSERT INTO inscripciones (idInscripción, idArtesano, idFeria, Puesto, Precio, FecInscripción)
VALUES 
(6, 8, 2, '1', '2500', '2023-06-17'),
(7, 4, 2, '2', '2500','2023-06-23'),
(8, 5, 2, '7', '2500','2023-06-25'),
(9, 3, 2, '4', '2500', '2023-07-31'),
(10, 7, 2, '9', '2500', '2023-07-03');

INSERT INTO inscripciones (idInscripción, idArtesano, idFeria, Puesto, Precio, FecInscripción)
VALUES 
(11, 3, 3, '3', '3000', '2023-10-28'),
(12, 2, 3, '7', '3000','2023-10-30'),
(13, 5, 3, '9', '3000','2023-11-01'),
(14, 6, 3, '1', '3000', '2023-11-03'),
(15, 4, 3, '6', '3000', '2023-11-04');

