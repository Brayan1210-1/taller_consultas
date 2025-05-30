-- 2. Categoría que genera mayor facturación

SELECT 
SUM(`dv`.`cantidad`*`precio_unitario`) AS `total`,
`ca`.`nombre` AS `categoria`

FROM `tienda`.`detalle_venta` `dv`
LEFT JOIN `tienda`.`producto` `p` ON `dv`.`producto_id` = `p`.`id`
INNER JOIN `tienda`.`categoria` `ca` ON `p`.`categoria_id` = `ca`.`id`
GROUP BY `ca`.`nombre`
ORDER BY `total` DESC
LIMIT 1;

-- Dio como resultado la categoría que tenía el monto más alto