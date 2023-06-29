USE Northwind

-- EJERCICIO 1
SELECT `employee_id`, COUNT(*) AS 'NumeroPedidos', MAX(`freight`) 
FROM `orders`
GROUP BY `employee_id`;

-- EJERCICIO 2
SELECT `employee_id`, COUNT(*) AS 'NumeroPedidos', MAX(`freight`) `order_date`
FROM `orders`
GROUP BY `employee_id`
HAVING `order_date` is NOT NULL;

-- EJERCICIO 3
SELECT DAY(`order_date`) AS Dia, MONTH(`order_date`) AS Mes, YEAR(`order_date`) AS Anio, COUNT(*) AS Pedidos
FROM `orders`
GROUP BY Anio, Mes, Dia
ORDER BY Anio, Mes, Dia;

-- EJERCICIO 4
SELECT MONTH(`order_date`) AS 'Mes', YEAR(`order_date`) AS 'Anio', COUNT(*) AS 'Pedidos'
FROM `orders`
GROUP BY MONTH(`order_date`), YEAR(`order_date`)
ORDER BY Anio, Mes;

-- EJERCICIO 5
SELECT `city` AS ciudades
FROM `employees`
GROUP BY `city`
HAVING COUNT(`employee_id`) >= 4;

-- EJERCICIO 6

SELECT *,
       CASE
           WHEN (unit_price * quantity) > 2000 THEN 'Alto'
           ELSE 'Bajo'
       END AS categoria
FROM order_details;





