SELECT * FROM sales.customers
WHERE customer_type = "E-Commerce"
GROUP BY customer_code;
SELECT * FROM sales.products;
SELECT * FROM sales.date
WHERE cy_date IN (2017-06-01, 2018-06-01)
ORDER BY cy_date DESC;
SELECT * FROM sales.products;
DELETE FROM sales.products
WHERE COALESCE (product_code, product_type) IS NULL;
SELECT count(*) FROM sales.transactions;
SELECT * FROM sales.date;
SELECT * FROM sales.customers
WHERE COALESCE (customer_code, custmer_name, customer_type) IS NULL;
SELECT * FROM sales.date
WHERE COALESCE (date, cy_date, year, month_name, date_yy_mmm) IS NULL;
SELECT * FROM sales.products
WHERE COALESCE (product_code, product_type) IS NULL;
SELECT * FROM sales.markets
WHERE COALESCE (markets_code, markets_name, zone) IS NULL;
SELECT * FROM sales.transactions
WHERE COALESCE (product_code, customer_code, market_code, order_date, sales_qty, sales_amount, currency, profit_margin_percentage, profit_margin, cost_price) IS NULL;
SELECT distinct product_code FROM transactions WHERE market_code='Mark001';
SELECT extract(month from "2017-10-19");
SELECT SUM(profit_margin) FROM sales.transactions;
SELECT count(DISTINCT customer_code, product_code) FROM sales.transactions;
SELECT AVG(profit_margin) from sales.transactions;