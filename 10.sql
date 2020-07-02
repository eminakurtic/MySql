DROP FUNCTION IF EXISTS kalkulator;
DELIMITER //
CREATE FUNCTION kalkulator(br1 INT, br2 INT, znak VARCHAR(2))
RETURNS INT
BEGIN

DECLARE rez INT;

IF znak = '+' THEN
    SET rez = br1 + br2;
ELSEIF znak = '-' THEN
    SET rez = br1 - br2;
ELSEIF znak = '*' THEN
    SET rez = br1 * br2;
ELSEIF znak = '/' THEN
    SET rez = br1 / br2;
ELSE
    SET rez = br1 + br2;
END IF; 

RETURN rez;


END //
DELIMITER ;