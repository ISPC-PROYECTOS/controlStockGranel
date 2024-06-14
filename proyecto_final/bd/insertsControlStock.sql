use stockagranel;
/* Inserción de datos en la tabla 'categorias' */
INSERT INTO categorias (categoria) VALUES
('HARINA'),
('CEREALES'),
('LEGUMBRES'),
('FRUTOS-SECOS'),
('OTROS');

/* Inserción de datos en la tabla 'proveedores' */
INSERT INTO PROVEEDORES (CUIT, proveedor, direccion, telefono, email, tiempoDeEntrega) VALUES					
('30-71427900-5', 'BIO SALUD SRL', 'Bv. Los Húngaros 4676', '54 9 3543 40 5354','info@bio-salud.com.ar','7'),					
('30-12345678-4', 'NAT S.A', 'San Luis 123', '543534123456','natsa@gmail.com','10'),					
('30-71565034-3', 'COMER SANO', 'Mendiolaza 2541', '3515646393','comersanocba@gmail.com','3');

/* Inserción de datos en la tabla 'productosGranel' */
INSERT INTO productosGranel (descripcion, cantidad, tamano, unidadMedida, cantidadMax, cantidadMin, idCategoria) VALUES
('HARINA INTEGRAL', 3, 10, 'kg', 5, 2, 1),
('LENTEJAS', 8, 25, 'kg', 10, 3, 2),
('ALMOHADITAS FRUTILLA', 4, 2.5,'kg', 8, 2, 3),
('NUECES', 7, 1,'kg', 7, 2, 4),
('QUINOA', 5, 5,'kg', 5, 2, 5);

/* Inserción de datos en la tabla 'prodProv' */
INSERT INTO prodProv (fechaIngr, fechaVto, cantidad, CUIT, idProductoGranel) VALUES
('2024-06-11', '2027-09-02', 3, '30-71427900-5', 1),
('2024-06-12', '2024-12-12', 7, '30-12345678-4', 2),
('2024-06-12', '2025-02-02', 4, '30-71565034-3', 3);

/* Inserción de datos en la tabla 'presentaciones' */
INSERT INTO presentaciones (descripcion, cantidad, tamano, unidadMedida, cantidadMax, cantidadMin, idProductoGranel) VALUES
('HARINA INTEGRAL', 2, 250, 'gr', 10, 3, 1),
('HARINA INTEGRAL', 3, 500, 'gr', 7, 3, 1),
('HARINA INTEGRAL', 5, 1000, 'gr', 5, 2, 1),
('LENTEJAS', 5, 1000, 'gr', 25, 5, 2),
('ALMOHADITAS FRUTILLA', 2, 250, 'gr', 15, 5, 3),
('ALMOHADITAS FRUTILLA', 4, 500, 'gr', 10, 2, 3),
('NUECES', 4, 250, 'gr', 8, 2, 4),
('NUECES', 4, 500, 'gr', 10, 5, 4),
('QUINOA', 2, 500, 'gr', 12, 4, 5),
('QUINOA', 3, 1000, 'gr', 8, 2, 5);

/* Inserción de datos en la tabla 'registroVenta' */
INSERT INTO registroVenta (fechaVenta, cantidad, idProductoFracc) VALUES 
('2024-06-11', 5, 1),
('2024-06-11', 2, 2);

/* Inserción de datos en la tabla 'perdidas' */
INSERT INTO perdidas (cantidad, vencido, fechaBaja, idProductoFracc) VALUES
(2, 1, '2024-06-11', 4),
(5, 0,'2024-05-25', 7);


				

