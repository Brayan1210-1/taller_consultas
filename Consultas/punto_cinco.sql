-- 5. Clientes sin compras desde su alta

SELECT `c`.`nombre`,
`c`.`apellido`,
`v`.`cliente_id` AS `compra`
FROM `tienda`.`cliente` `c`
LEFT JOIN `tienda`.`venta` `v` ON  `c`.`id` = `v`.`cliente_id` WHERE `cliente_id` IS NULL

-- La consulta da como resultado los nombres y apellidos de los clientes que no han hecho compras