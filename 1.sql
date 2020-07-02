USE korisnik;
SELECT korisnik.ime, korisnik.prezime, korisnik.password, grad.grad
FROM korisnik
INNER JOIN grad ON korisnik.grad_id = grad.id;