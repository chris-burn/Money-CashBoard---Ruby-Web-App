DROP TABLE transactions;
DROP TABLE tags;
DROP TABLE merchants;

CREATE TABLE merchants (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
location VARCHAR(255)
);

CREATE TABLE tags (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE transactions (
id SERIAL8 PRIMARY KEY,
value INT8,
comment VARCHAR(255),
tag_id INT8 REFERENCES tags(id),
merchant_id INT8 REFERENCES merchants(id)
);