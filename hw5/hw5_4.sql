SELECT *, timediff(LEAD(station_time) OVER(PARTITION BY train_id), station_time) AS 'time_to_next_station' 
FROM Trains;