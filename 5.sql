USE korisnik;
DELIMITRE //
CREATE PROCEDURE unos_izmjena (
	_ime VARCHAR(50),
    _prezime VARCHAR (50),
    _password VARCHAR (100),
    _grad INT,
    _status VARCHAR(20),
    _biografija VARCHAR(200)
    )
BEGIN
	DECLARE broj_korisnika INT;
    SELECT COUNT(id) FROM korisnik WHERE korisnik.ime = _ime INTO broj_korisnika;
    
    IF broj korisnika < 1 THEN
		INSERT INTO korisnik (ime, prezime, password, grad_id, status, biografija, datetime)
        VALUES (_ime, _prezime, _password, _grad, _status, _biografija, NOW());
	ELSE
		UPDATE korisnik SET korisnik.password = _password WHERE korisnik.ime = _ime;
	END IF;
END //
DELIMITER;