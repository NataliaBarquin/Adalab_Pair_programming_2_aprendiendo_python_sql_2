-- EJERCICIO 1


SELECT `order_id`, `customer_id`, `employee_id`, `order_date`, `required_date`
	FROM `orders` AS o1
    WHERE `order_date` = (SELECT MAX(`order_date`)
							FROM `orders` AS o2
                            WHERE `o1`.`employee_id` = `o2`.`employee_id`);
                            
-- EJERCICIO 2

SELECT `product_id`, MAX(unit_price) AS max_unit_price_sold
	FROM `order_details` AS o1
    GROUP BY `product_id`;
    
-- EJERCICIO 3

SELECT `city`, `company_name`, `contact_name`
	FROM `customers` 
    WHERE `city` LIKE 'A%' OR `city` LIKE 'B%'; 
    
-- EJERCICIO 4 SIN ACABAR POR QUE NO HEMOS PODIDO AUNQUE LO HEMOS INTENTADO, Y CESAR HA DICHO QUE NO ERA NECESARIO

SELECT  customers.city, customers.company_name, customers.contact_name, COUNT(orders.order_id) AS numero_pedidos
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.city 
GROUP BY customers.contact_name
HAVING customers.city LIKE 'L%';



    