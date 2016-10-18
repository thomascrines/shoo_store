DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  id SERIAL4 PRIMARY KEY,
  full_name VARCHAR(255),
  address VARCHAR(255),
  quantity INT4,
  size INT2
);