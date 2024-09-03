-- Consultas sobre la tabla CONDUCTORES
SELECT COUNT(*) FROM Conduct_vehi.conductores;

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.apellido = "Fernandez";

SELECT * FROM Conduct_vehi.conductores ORDER BY Conduct_vehi.conductores.apellido  ASC;

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.telefono LIKE "63%";

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.apellido LIKE "%ez";

SELECT COUNT(*) as Qty_Fernandez_Surname FROM Conduct_vehi.conductores where Conduct_vehi.conductores.apellido LIKE "Fernandez";

SELECT nombre, apellido, localidad FROM Conduct_vehi.conductores;

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.localidad = "Lleida";

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.id IN (2,11) ;
SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.id BETWEEN 9 and 11;

SELECT * FROM Conduct_vehi.conductores WHERE Conduct_vehi.conductores.localidad = "Lleida" AND Conduct_vehi.conductores.apellido="Elias";

-- Consultas sobre la tabla VEHICULOS
SELECT COUNT(*) FROM Conduct_vehi.vehiculos;

SELECT * FROM Conduct_vehi.vehiculos WHERE Conduct_vehi.vehiculos.tipo = "bici" ;

SELECT * FROM Conduct_vehi.vehiculos WHERE Conduct_vehi.vehiculos.marca = "mazda" AND Conduct_vehi.vehiculos.modelo = "cx-5";

SELECT * FROM Conduct_vehi.vehiculos ORDER BY Conduct_vehi.vehiculos.ano ASC;

SELECT Conduct_vehi.vehiculos.tipo AS TIPO, COUNT(*) FROM Conduct_vehi.vehiculos GROUP BY Conduct_vehi.vehiculos.tipo;

SELECT * FROM Conduct_vehi.vehiculos WHERE Conduct_vehi.vehiculos.modelo LIKE "r%";

SELECT * FROM Conduct_vehi.vehiculos WHERE Conduct_vehi.vehiculos.ano BETWEEN '2020' AND '2022';

SELECT DISTINCT Conduct_vehi.vehiculos.marca AS MARCAS FROM Conduct_vehi.vehiculos;

SELECT * FROM Conduct_vehi.vehiculos WHERE Conduct_vehi.vehiculos.marca = "honda" AND Conduct_vehi.vehiculos.ano = "2024";


-- Consultas sobre ambas tablas (JOIN)
SELECT v.*, c.nombre, c.apellido FROM Conduct_vehi.vehiculos v JOIN Conduct_vehi.conductores c ON v.userId = c.id;

SELECT c.*, COUNT(v.id) FROM Conduct_vehi.conductores c LEFT JOIN Conduct_vehi.vehiculos v ON v.userId = c.id GROUP BY c.id;

SELECT c.*, v.* FROM Conduct_vehi.conductores c JOIN Conduct_vehi.vehiculos v ON v.userId = c.id WHERE v.tipo="patinete";

SELECT v.marca, c.telefono FROM Conduct_vehi.vehiculos v JOIN Conduct_vehi.conductores c ON v.userId = c.id;

SELECT c.* FROM Conduct_vehi.conductores c JOIN Conduct_vehi.vehiculos v  ON v.userId = c.id  GROUP BY c.id HAVING COUNT(v.id)>0;

SELECT COUNT(c.id) as Qty_Conductores_Automovil FROM Conduct_vehi.conductores c JOIN Conduct_vehi.vehiculos v  ON v.userId = c.id  WHERE v.tipo="automovil";






