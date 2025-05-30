-- 6. Ticket promedio por venta

SELECT 
AVG(`cantidad`*`precio_unitario`) AS `promedio`,
COUNT(num_venta) AS `total_venta`
FROM `tienda`.`venta` `v`
INNER JOIN `tienda`.`detalle_venta` `dv` ON `v`.`detalle_venta_id` = `dv`.`id`

-- La consulta muestra el promedio y número de todas las ventas