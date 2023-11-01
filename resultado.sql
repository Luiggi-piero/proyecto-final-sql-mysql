-- Resultado de facturacion luego de crear registros (ventas) en items a traves del procedimiento sp_venta
SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS FACTURACION
FROM facturas A
INNER JOIN items B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20231101'
GROUP BY A.FECHA;


CALL sp_venta('20231101', 90, 100);