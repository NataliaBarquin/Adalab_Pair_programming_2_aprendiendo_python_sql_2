SELECT orders.order_id, customers.company_name, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- EJERCICIO 2
SELECT customers.company_name AS nombre_empresa,
COUNT(order_id) AS numero_pedidos
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.customer_id;

-- EJERCICIO 3
SELECT orders.order_id,customers.company_name, orders.order_date
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK';

-- EJERCICIO 4

SELECT A.city, A.last_name, A.first_name, 
B.city AS "Ciudad_jefe", B.last_name AS "Apellido_jefe" , B.first_name AS "Nombre_jefe"
FROM employees AS A, employees AS B
WHERE A.reports_to = B.employee_id;
 
 -- El Director es Andrew Fuller por que NO reporta a nadie, NO aparece en la tabla, Andrew es el jefe
 
