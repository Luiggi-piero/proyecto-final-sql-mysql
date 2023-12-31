CREATE TABLE facturacion(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
);

-- triggers usando sp (procedimientos almacenados)

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //


SELECT * FROM facturacion WHERE FECHA = '20231225';

CALL sp_venta('20231225', 10, 100);

-- Nuevos triggres con sp

DROP TRIGGER TG_FACTURACION_INSERT;
DROP TRIGGER TG_FACTURACION_DELETE;
DROP TRIGGER TG_FACTURACION_UPDATE;

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  CALL sp_triggres;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  CALL sp_triggres;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  CALL sp_triggres;
END //