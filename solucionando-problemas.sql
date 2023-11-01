/*
Solucionando el problema de obtener el valor maximo de NUMERO de la tabla facturas 
cambiando el tipo de los campos NUMERO en facturas e items
*/
CREATE TABLE facturas(
NUMERO INT NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),
FOREIGN KEY (DNI) REFERENCES clientes(DNI),
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
);

DROP TABLE items;
CREATE TABLE items (
NUMERO INT NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);

/*
Completando las tablas con registros de otras tablas de una bd distinta
*/
INSERT INTO items 
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO 
FROM jugos_ventas.items_facturas;

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;