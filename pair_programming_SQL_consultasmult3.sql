USE Northwind;

-- EJERCICIO 1 

SELECT `city`, `company_name`, `contact_name`, 'customers' AS `Relationship`
	FROM `customers`
	UNION
	SELECT `city`, `company_name`, `contact_name`, 'suppliers' AS `Relationship`
		FROM `suppliers`;
    
-- EJERCICIO 2
-- Nancy Davolio es employee_ID 1

SELECT *
	FROM `orders`
    WHERE `employee_id` IN(
		SELECT `employee_id` = 1
        FROM `employees`);
        
-- EJERCICIO 3

SELECT `company_name`, `country`
	FROM `customers`
	WHERE `customer_id`  NOT IN (
		SELECT `customer_id`
		FROM `orders`
		WHERE YEAR(`order_date`) = 1997);

-- EJERCICIO 4
	
SELECT * 
	FROM `orders`
    WHERE `order_id` IN (SELECT `order_id`
		FROM `products`
		INNER JOIN `order_details`
		ON `products`.`product_id` = `order_details`.`product_id` 
		WHERE `product_name` = 'Konbu');
    














