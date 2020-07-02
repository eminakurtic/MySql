USE korisnik;
DELIMITRE //
CREATE PROCEDURE unos3(_ime varchar(50),  _prezime varchar(50), _password varchar(100), _grad int, _status varchar(50))
MODIFIES SQL DATA
BEGIN

DECLARE userCount INT;
SELECT count (*) FROM korisnik WHERE korisnik.ime = _ime INTO usersCount;
SELECT usersCount;

IF usersCount < 1 THEN
	INSERT INTO korisnik (ime, prezime, password, grad_id, status)
    VALUES (_ime, _prezime, _password, _grad, _status);
    SELECT '0';
ELSE
	SELECT '-1';
END IF;
END //
DELIMITER;
