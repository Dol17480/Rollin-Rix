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

