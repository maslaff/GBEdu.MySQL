
CREATE TABLE sales (
  id MEDIUMINT NOT NULL AUTO_INCREMENT,
  order_date date NOT NULL,
  bucket TEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO sales VALUES (NULL, '2021-01-01', '101 to 300');
INSERT INTO sales VALUES (NULL, '2021-01-02', '101 to 300');
INSERT INTO sales VALUES (NULL, '2021-01-03', 'less than equal to 100');
INSERT INTO sales VALUES (NULL, '2021-01-04', '101 to 300');
INSERT INTO sales VALUES (NULL, '2021-01-05', 'greater than 300');

SELECT * FROM sales;

ALTER TABLE sales ADD COLUMN bucket_match TEXT;

update sales SET bucket_match=
  case
    when sales.bucket = 'less than equal to 100' then 'меньше 100'
    when sales.bucket = '101 to 300' then '101-300'
    when sales.bucket = 'greater than 300' then 'больше 300'
  end;
  
SELECT * FROM sales;
