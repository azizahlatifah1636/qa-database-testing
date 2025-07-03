
--  sql-basics/queries.sql
-- Kumpulan query SQL dasar


-- 1. Menampilkan semua data user
SELECT * FROM users;

-- 2. Menampilkan user dengan email tertentu
SELECT * FROM users
WHERE email = 'azizah@gmail.com';

-- 3. Menampilkan semua order
SELECT * FROM orders;

-- 4. Menampilkan order dengan status "pending"
SELECT * FROM orders
WHERE status = 'pending';

-- 5. Menampilkan semua produk
SELECT * FROM products;

-- 6. Menampilkan produk dengan harga lebih dari 100000
SELECT * FROM products
WHERE price > 100000;

-- 7. JOIN antara users dan orders untuk melihat siapa memesan apa
SELECT 
  u.id AS user_id,
  u.name AS user_name,
  o.product_name,
  o.status
FROM orders o
JOIN users u ON o.user_id = u.id;

-- 8. JOIN orders dan products untuk melihat nama produk dan harga
SELECT 
  o.id AS order_id,
  o.product_name,
  p.price,
  o.status
FROM orders o
JOIN products p ON o.product_name = p.name;

-- 9. Menampilkan jumlah order per user
SELECT 
  u.name,
  COUNT(o.id) AS total_orders
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
GROUP BY u.name;

-- 10. Menampilkan total nilai transaksi per user (asumsi produk ada harganya)
SELECT 
  u.name,
  SUM(p.price) AS total_spent
FROM orders o
JOIN users u ON o.user_id = u.id
JOIN products p ON o.product_name = p.name
GROUP BY u.name;

-- ====================================

