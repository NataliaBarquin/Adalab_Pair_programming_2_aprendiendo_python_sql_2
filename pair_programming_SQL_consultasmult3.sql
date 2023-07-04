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
FROM `order_details`
INNER JOIN `products`
ON `order_details`.`product_id` = `products`.`product_id`
WHERE `product_id` IN(
	SELECT `product_id` = 13
	FROM `products`);

SELECT *
FROM `order_details`
INNER JOIN `products`
ON `order_details`.`product_id` = `products`.`product_id`
WHERE `product_id` IN (
	SELECT `product_id`
	FROM `products`
	WHERE `product_id` = 13
);
















