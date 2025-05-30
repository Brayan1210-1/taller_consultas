-- 1. Distribución de ventas por método de pago

SELECT  
COUNT(`num_venta`)  AS `total_ventas`,
SUM(`precio_unitario`*`cantidad`) AS `monto_total`,
`v`.`metodo_pago` 
FROM `tienda`.`venta` `v`
LEFT JOIN `tienda`.`detalle_venta` `dv` ON `dv`.`id` = `v`.`detalle_venta_id`
GROUP BY `v`.`metodo_pago`;

-- El resultado obtenido fue el monto y ventas totales para cada método de pago