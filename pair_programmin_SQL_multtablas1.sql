-- ejercicio 1
SELECT customers.customer_id AS identificador,customers.company_name AS nombre_empresa ,
COUNT(order_id) AS numero_pedidos
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.customer_id;
