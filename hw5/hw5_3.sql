SET @dt:='2022-01-02';
SELECT a.an_name, a.an_cost, o.ord_datetime
FROM Analysis a JOIN An_Orders o ON a.an_id = o.ord_an
WHERE o.ord_datetime BETWEEN @dt AND DATE_ADD(@dt, INTERVAL 7 DAY);