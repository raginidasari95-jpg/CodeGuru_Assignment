CREATE TABLE product_inventory(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2),
quantity INT
);

INSERT INTO product_inventory VALUES
(1,'laptop', 'electronics', 55000.00, 10),
(2, 'mobile phone', 'electronics', 25000.00, 20),
(3, 'keyboard', 'accessories', 1200.00, 50),
(4, 'mouse', 'accessories', 800.00, 40),
(5, 'head phones', 'accessories', 2000.00, 30 );

SELECT * FROM product_inventory;
UPDATE product_inventory
SET category = 'electronics'
WHERE product_id IN (1,2);
SELECT * FROM product_inventory;

EXTRACT YOUR TOP 3 HIGHEST COST ITEMS ?

SELECT * 
FROM product_inventory
ORDER BY price DESC
LIMIT 3;

find the 4th and 5th most expensive products by skipping the top 3:

SELECT *
FROM product_inventory
ORDER BY price DESC
LIMIT 2 OFFSET 3;






