DROP PROCEDURE IF EXISTS my_cursor;
DELIMITER $$
CREATE PROCEDURE my_cursor()
BEGIN
    DECLARE id INT;
    DECLARE fname VARCHAR(50);
    DECLARE c CURSOR FOR SELECT actor_id, first_name FROM actor;
    OPEN c;
        REPEAT
            FETCH c INTO id, fname;
            IF fname = 'CHRISTIAN' THEN
                UPDATE actor SET first_name = 'CHRIS' WHERE actor_id = id;
            END IF;
            SELECT fname;
        UNTIL isnull(id) END repeat;
    CLOSE c;
END $$
DELIMITER ; 