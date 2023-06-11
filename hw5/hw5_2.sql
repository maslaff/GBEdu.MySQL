CREATE VIEW CheapCars AS 
	SELECT Car_Name 
    FROM Cars 
    WHERE Cost<25000;

ALTER VIEW CheapCars AS 
	SELECT Car_Name 
    FROM Cars
    WHERE Cost<30000;

SELECT * FROM CheapCars;

CREATE VIEW CheapCarsMark AS 
	SELECT *
    FROM Cars
    WHERE Car_Name IN ('Skoda', 'Audi');
    
SELECT * FROM CheapCarsMark;