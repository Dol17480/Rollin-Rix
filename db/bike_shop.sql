DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS bikes;

CREATE TABLE bikes (
  id serial4 primary key,
  category varchar(255),
  type varchar(255),
  brand_name varchar(255),
  model varchar(255),
  colour varchar(255),
  size varchar(255),
  price int4
);

CREATE TABLE customers (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  phone int8
);

CREATE TABLE sales (
  id serial4 PRIMARY KEY,
  bike_id int4 references bikes(id) ON DELETE CASCADE,
  customer_id int4 references customers(id) ON DELETE CASCADE
);