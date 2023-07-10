-- ejercicio 1
WITH cte_customer_companies AS (
  SELECT customer_id, company_name
  FROM customers
)
SELECT customer_id, company_name
FROM cte_customer_companies;

-- ejercicio 2
WITH cte_customer_companies AS (
  SELECT customer_id, company_name
  FROM customers
)
SELECT customer_id, company_name
FROM cte_customer_companies;

-- ejercicio 3
-- Extraed el id de las facturas y su fecha de cada cliente.
-- En este caso queremos extraer todas las facturas que se han emitido a un cliente,
-- su fecha la compañia a la que pertenece.
--  NOTA En este caso tendremos columnas con elementos repetidos(CustomerID, y Company Name).

WITH cte3 AS (SELECT * -- seleccionamos todo--
FROM orders
INNER JOIN customers ON customers.customer_id = orders.customer_id)
	SELECT order_id, order_date, customer_id, company_name
    FROM cte3;



WITH cte3 AS (SELECT orders.order_id, orders.order_date,customers.customer_id, customers.company_name
FROM orders
INNER JOIN customers ON customers.customer_id = orders.customer_id)
	SELECT order_id, order_date, customer_id, company_name
    FROM cte3;

