-- Comments in SQL Start with dash-dash --

-- Command #1 --
 INSERT INTO products (name, price, can_be_returned)
 VALUES ('chair', 44.00, false);

-- command #2 & 3 --
 INSERT INTO products (name, price, can_be_returned)
 VALUES
 ('stool', 25.99, true),
 ('table', 124.00, false);

-- command #4 --
 SELECT * FROM products;

-- command #5
 SELECT name FROM products;

-- command #6 --
 SELECT name, price FROM products;

-- command #7 --
 INSERT INTO products (name, price, can_be_returned)
 VALUES ('toilet paper', 0.99, false);

-- command #8 --
 SELECT * FROM products WHERE can_be_returned;

-- command #9 --
 SELECT * FROM products WHERE price < 44.00;

-- command #10 --
 SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- command #11 --
 UPDATE products SET price = price - 20.00 WHERE price > 20;
 -- fails without where clause when a price is less than 20.00 (cannot be negative)

-- command #12 --
 DELETE FROM products WHERE price < 25;

-- command #13 --
 UPDATE products SET price = price + 20.00;

-- command #14 --
  UPDATE products SET can_be_returned = true;

