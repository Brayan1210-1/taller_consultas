-- 3. empleado con mejor desempeño

SELECT `nombre`,
COUNT(`num_venta`) AS `ventas`
FROM `tienda`.`empleado` `e`
INNER JOIN `tienda`.`venta` `v` ON `e`.`id` = `v`.`empleado_id`
GROUP BY `nombre`
ORDER BY `ventas` DESC
LIMIT 1;

-- la consulta da como resultado el nombre del empleado que más vendió
