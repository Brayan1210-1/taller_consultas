-- 7. Meses con más actualizaciones de venta

SELECT 
COUNT(`updatedAt`) AS `total_actualizacion`
FROM `tienda`.`venta`
WHERE `updatedAt` <> NULL
ORDER BY `updatedAt`



