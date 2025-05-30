-- 4. Evolución del inventario de un producto específico (auriculares Bluetooth)

SELECT 
`p`.`nombre`,
`p`.`cantidad`,
`p`.`createdAt` AS `fecha_surtido`,
`dv`.`cantidad` AS `cantidad_vendida`,
`dv`.`createdAt`AS `fecha_vendido`,
`p`.`cantidad`-`dv`.`cantidad` AS `inventario`
FROM `tienda`.`producto` `p`
INNER JOIN `tienda`.`detalle_venta` `dv` ON `p`.`id` = `dv`.`producto_id`
INNER JOIN `tienda`.`venta` `v` ON `dv`.`id` = `v`.`detalle_venta_id`
WHERE `dv`.`producto_id` = 3
ORDER BY `dv`.`createdAt` DESC

-- Muestra el nombre del producto, cantidad y fechas cuando se surte o vende el producto, también aparece el invenatrio actualizado