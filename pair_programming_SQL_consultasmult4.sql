-- ejercicio 1 (con subconsulta en el from)
USE nortwind

SELECT *
	FROM `products`
	WHERE `category_id` IN (SELECT `category_id`
	FROM `categories`
    WHERE `category_name` = 'Beverages');
    
-- ejercicio 2 (sacar los paises donde viven los clientes y donde no tenemos proveedor. 
-- select principal country de customer y que no este...
-- SOLUCION: Estamos seleccionando del country para que nos de valores distintos,donde el pais no este
-- repetido, no queremos paises que tengan proveedores.
SELECT DISTINCT country
FROM customers
WHERE country NOT IN (SELECT country FROM suppliers);

    
-- ejercicio 3 (poner en el from una query. seleccionar la cantidad de order details)
-- Extraer los clientes que compraron mas de 20 articulos "Grandma's Boysenberry Spread"

SELECT o.order_id, o.customer_id
	FROM  orders as o
    WHERE  (SELECT od.quantity
			FROM order_details AS od
            WHERE o.order_id = od.order_id AND od.product_id = 6) > 20;
            
SELECT * FROM order_details -- visualizamos que hay muchos orders_id con pedidios de mas de 20
WHERE product_id = 6


-- ejercicio 4 (metiendo esta query en el from. utilizar el limit. )

