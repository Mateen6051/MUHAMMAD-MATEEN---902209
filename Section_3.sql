-- Task 12: Products with brand name and category name
SELECT 
    p.product_name,
    b.brand_name,
    c.category_name
FROM production.products AS p
INNER JOIN production.brands AS b
    ON p.brand_id = b.brand_id
INNER JOIN production.categories AS c
    ON p.category_id = c.category_id;


-- Task 13: Orders with customer's full name, order date, and status
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.order_status
FROM sales.orders AS o
INNER JOIN sales.customers AS c
    ON o.customer_id = c.customer_id;


-- Task 14: Order items with product name, quantity, price, and discount
SELECT 
    oi.order_id,
    oi.item_id,
    p.product_name,
    oi.quantity,
    oi.list_price,
    oi.discount
FROM sales.order_items AS oi
INNER JOIN production.products AS p
    ON oi.product_id = p.product_id;


-- Task 15: Staff member's full name alongside store name
SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    st.store_name
FROM sales.staffs AS s
INNER JOIN sales.stores AS st
    ON s.store_id = st.store_id;


-- Task 16: Staff members alongside their manager's full name
SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM sales.staffs AS s
LEFT JOIN sales.staffs AS m
    ON s.manager_id = m.staff_id;


-- Task 17: Stores and products they have in stock (quantity > 0)
SELECT 
    st.store_name,
    p.product_name,
    s.quantity
FROM production.stocks AS s
INNER JOIN sales.stores AS st
    ON s.store_id = st.store_id
INNER JOIN production.products AS p
    ON s.product_id = p.product_id
WHERE s.quantity > 0;


-- Task 18: Customers who placed at least one order
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date
FROM sales.customers AS c
INNER JOIN sales.orders AS o
    ON c.customer_id = o.customer_id;


-- Task 19: ALL customers and their orders, including customers with no orders
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    o.order_date,
    o.order_status
FROM sales.customers AS c
LEFT JOIN sales.orders AS o
    ON c.customer_id = o.customer_id;-- Task 12: Products with brand name and category name
SELECT 
    p.product_name,
    b.brand_name,
    c.category_name
FROM production.products AS p
INNER JOIN production.brands AS b
    ON p.brand_id = b.brand_id
INNER JOIN production.categories AS c
    ON p.category_id = c.category_id;


-- Task 13: Orders with customer's full name, order date, and status
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.order_status
FROM sales.orders AS o
INNER JOIN sales.customers AS c
    ON o.customer_id = c.customer_id;


-- Task 14: Order items with product name, quantity, price, and discount
SELECT 
    oi.order_id,
    oi.item_id,
    p.product_name,
    oi.quantity,
    oi.list_price,
    oi.discount
FROM sales.order_items AS oi
INNER JOIN production.products AS p
    ON oi.product_id = p.product_id;


-- Task 15: Staff member's full name alongside store name
SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    st.store_name
FROM sales.staffs AS s
INNER JOIN sales.stores AS st
    ON s.store_id = st.store_id;


-- Task 16: Staff members alongside their manager's full name
SELECT 
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM sales.staffs AS s
LEFT JOIN sales.staffs AS m
    ON s.manager_id = m.staff_id;


-- Task 17: Stores and products they have in stock (quantity > 0)
SELECT 
    st.store_name,
    p.product_name,
    s.quantity
FROM production.stocks AS s
INNER JOIN sales.stores AS st
    ON s.store_id = st.store_id
INNER JOIN production.products AS p
    ON s.product_id = p.product_id
WHERE s.quantity > 0;


-- Task 18: Customers who placed at least one order
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date
FROM sales.customers AS c
INNER JOIN sales.orders AS o
    ON c.customer_id = o.customer_id;


-- Task 19: ALL customers and their orders, including customers with no orders
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_id,
    o.order_date,
    o.order_status
FROM sales.customers AS c
LEFT JOIN sales.orders AS o
    ON c.customer_id = o.customer_id;