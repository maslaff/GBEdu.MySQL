DROP FUNCTION IF EXISTS SecFormat;
DELIMITER //
CREATE FUNCTION SecFormat(ss INT) 
RETURNS VARCHAR(200) DETERMINISTIC 
BEGIN
	DECLARE days, hours, mins, secs INT;
	SET days=FLOOR(ss/60/60/24);
    SET hours=FLOOR(MOD(ss, 60*60*24)/60/60);
    SET mins=FLOOR(MOD(ss, 60*60)/60);
    SET secs=(MOD(ss, 60));

	RETURN (concat(days, ' дней, ', hours, ' часов, ', mins, ' минут, ', secs, ' секунд.'));
END//

DELIMITER ;
SELECT SecFormat(123456);