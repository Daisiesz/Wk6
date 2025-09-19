-- Answer 1: Get employee details with office code using INNER JOIN
USE salesdb;
SELECT * FROM employees, offices

SELECT employees.firstName, employees.lastName, employees.email, employees.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;

-- Answer 2: Using left join to get prodct info.
SELECT products.productName, products.productVendor, products.productLine
FROM products
LEFT JOIN productlines
ON products.productLine =  productlines.productLine;

-- Answer 3: Use right join to get the first 10 order information.
SELECT orders.orderDate, orders.shippedDate, orders.status, orders.customerNumber
FROM orders
RIGHT JOIN customers 
ON orders.customerNumber = customers.customerNumber
LIMIT 10;