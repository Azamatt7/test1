CREATE TABLE products (
                          id SERIAL PRIMARY KEY,
                          productName VARCHAR(30) NOT NULL,
                          company VARCHAR(20) NOT NULL,
                          productCount INT DEFAULT 0,
                          price NUMERIC NOT NULL,
                          isDiscounted BOOL
);
INSERT INTO products (productName, company, productCount, price, isDiscounted)
VALUES
    ('iPhone X', 'Apple', 3, 76000, false),
    ('iPhone 8', 'Apple', 2, 71000, true),
    ('iPhone 7', 'Apple', 5, 42000, true),
    ('Galaxy S9', 'Samsung', 2, 46000, false),
    ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
    ('Desire 12', 'HTC', 5, 28000, true),
    ('Nokia 9', 'HMD Global', 6, 38000, true);
DROP TABLE products;

--1. HTC компаниясынан башка компаниянын продуктуларын алыныз
  SELECT * FROM products WHERE company NOT IN  ('HTC');

--2. Apple компаниясынын 75000минден томонку баадагы продуктуларын алыныз.
  SELECT * FROM products WHERE company = 'Apple' AND price < 75000;
  SELECT (productName) FROM products WHERE company = 'Apple' AND price < 75000;

--3. Баасы 46000 жана андан ойдоку продуктулардын баарын алыныз
  SELECT * FROM products WHERE price >= 46000;

--4. Эн кымбат эки продукту алыныз
  SELECT * FROM products ORDER BY price DESC LIMIT 2;

--5. Баасы минимальный болгон продуктун атын алыныз
  SELECT min(productName) FROM products;

--6. Дискоунт болгон продуктуларды чыгарыныз.
  SELECT productName FROM products where isDiscounted = TRUE;

--7. Дискоунт болбогон продуктуларды чыгарыныз.
  SELECT productName FROM products WHERE isDiscounted = FALSE;

--8. Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
  SELECT * FROM products ORDER BY price DESC;

--9. Баардык продуктулардын суммасын(баасын) чыгарыныз.
  SELECT sum(price) FROM products;

--10. Эки жана андан аз продуктусу бар компанияларды алыныз
  SELECT (company) FROM products WHERE productCount BETWEEN 1 AND 2;

