-- Haciendo uso del procedimiento

SELECT f_cliente_aleatorio() AS CLIENTE, f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR;

CALL sp_venta('20231101', 3, 100);

SELECT MAX(NUMERO) FROM facturas;

SELECT * FROM facturas;