CREATE TABLE orders (
  orderid MEDIUMINT NOT NULL AUTO_INCREMENT,
  employeeid TEXT NOT NULL,
  amount decimal(5,2) NOT NULL,
  orderstatus TEXT NOT NULL,
  PRIMARY KEY (orderid)
);

INSERT INTO orders VALUES (NULL, 'e03', 15.00, 'OPEN');
INSERT INTO orders VALUES (NULL, 'e01', 25.50, 'OPEN');
INSERT INTO orders VALUES (NULL, 'e05', 100.70, 'CLOSED');
INSERT INTO orders VALUES (NULL, 'e02', 22.18, 'OPEN');
INSERT INTO orders VALUES (NULL, 'e04', 9.50, 'CANCELLED');
INSERT INTO orders VALUES (NULL, 'e04', 99.99, 'OPEN');

SELECT orderid, orderstatus, 
  case orderstatus
    when 'OPEN' then 'Заказ открыт'
    when 'CLOSED' then 'Заказ закрыт'
    when 'CANCELLED' then 'Заказ отменен'
    end as order_summary
FROM orders;
