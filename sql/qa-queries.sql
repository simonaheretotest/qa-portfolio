-- SQL queries I use during testing
-- goal: check database state matches what the app shows

-- does the order actually exist after checkout?
SELECT * FROM orders WHERE id = '12345';

-- how many users signed up today (checking registration flow)
SELECT COUNT(*) FROM users 
WHERE created_at > '2026-10-12';

-- verify customer record saved correctly
SELECT email, status 
FROM customers 
WHERE email = 'test@example.com';

-- check order belongs to the right customer
SELECT orders.id, customers.email, orders.status
FROM orders
JOIN customers ON orders.customer_id = customers.id;

-- catch duplicate emails before they cause login bugs
SELECT email, COUNT(*) as total
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
