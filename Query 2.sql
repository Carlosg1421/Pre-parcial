INSERT INTO REGION (REGION_CODE, REGION_DESCRIPT, REGION_TYPE) VALUES
(1, 'Region Norte', 'Norte'),
(2, 'Region Sur', 'Sur'),
(3, 'Region Este', 'Este'),
(4, 'Region Oeste', 'Oeste'),
(5, 'Region Central', 'Norte'),
(6, 'Region Pacifico', 'Oeste'),
(7, 'Region Atlantico', 'Este'),
(8, 'Region Andina', 'Sur'),
(9, 'Region Amazonica', 'Sur'),
(10, 'Region Caribe', 'Norte');


INSERT INTO STORE (STORE_CODE, STORE_NAME, STORE_YTD_SALES, REGION_CODE, IS_OPEN) VALUES
(101, 'Tienda A', 50000.00, 1, TRUE),
(102, 'Tienda B', 30000.00, 2, TRUE),
(103, 'Tienda C', 70000.00, 3, TRUE),
(104, 'Tienda D', 45000.00, 4, TRUE),
(105, 'Tienda E', 80000.00, 5, FALSE),
(106, 'Tienda F', 15000.00, 6, TRUE),
(107, 'Tienda G', 25000.00, 7, TRUE),
(108, 'Tienda H', 35000.00, 8, FALSE),
(109, 'Tienda I', 60000.00, 9, TRUE),
(110, 'Tienda J', 40000.00, 10, TRUE);


INSERT INTO JOB (JOB_CODE, JOB_DESCRIPTION, JOB_BASE_PAY, JOB_LEVEL) VALUES
(201, 'Gerente', 5000.00, 'Senior'),
(202, 'Vendedor', 2500.00, 'Mid'),
(203, 'Cajero', 2000.00, 'Junior'),
(204, 'Supervisor', 3500.00, 'Mid'),
(205, 'Almacenero', 1800.00, 'Junior'),
(206, 'Limpieza', 1600.00, 'Junior'),
(207, 'Administrador', 4000.00, 'Senior'),
(208, 'Seguridad', 2200.00, 'Mid'),
(209, 'Atención Cliente', 2800.00, 'Mid'),
(210, 'Repartidor', 2400.00, 'Junior');


INSERT INTO EMPLOYEE (EMP_CODE, EMP_TITLE, EMP_LNAME, EMP_FNAME, EMP_INITIAL, EMP_DOB, JOB_CODE, STORE_CODE, EMP_TYPE, IS_ACTIVE) VALUES
(301, 'Sr.', 'Perez', 'Juan', 'J', '1990-05-12', 201, 101, 'Full-Time', TRUE),
(302, 'Sra.', 'Gomez', 'Maria', 'M', '1985-10-23', 202, 102, 'Part-Time', TRUE),
(303, 'Sr.', 'Lopez', 'Carlos', 'C', '1992-07-15', 203, 103, 'Contract', TRUE),
(304, 'Sr.', 'Martinez', 'Jose', 'J', '1988-01-20', 204, 104, 'Full-Time', TRUE),
(305, 'Sra.', 'Fernandez', 'Ana', 'A', '1995-03-14', 205, 105, 'Part-Time', FALSE),
(306, 'Sr.', 'Rodriguez', 'Luis', 'L', '1993-08-30', 206, 106, 'Contract', TRUE),
(307, 'Sr.', 'Diaz', 'Miguel', 'M', '1987-12-05', 207, 107, 'Full-Time', TRUE),
(308, 'Sra.', 'Vargas', 'Sofia', 'S', '1996-06-18', 208, 108, 'Part-Time', FALSE),
(309, 'Sr.', 'Santos', 'Javier', 'J', '1991-09-25', 209, 109, 'Contract', TRUE),
(310, 'Sra.', 'Morales', 'Carla', 'C', '1984-04-10', 210, 110, 'Full-Time', TRUE);
