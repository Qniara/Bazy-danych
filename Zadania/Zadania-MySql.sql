Zad.1
SELECT * FROM ksiazki ORDER BY tytul asc
Zad.2
select * from ksiazki order by cena desc limit 1
Zad.3
select * from zamowienia where status="wyslano"
Zad.4
select * from klienci where nazwisko="Rutkowski"
Zad.5
select * from ksiazki where tytul="%PHP%"
Zad.6
select * from zamowienia order by data asc
Zad.7
select klienci.imie, klienci.nazwisko, zamowienia.idzamowienia, zamowienia.data 
from klienci, zamowienia 
where klienci.idklienta=zamowienia.idklienta
group by zamowienia.idzamowienia
Zad.7a
select zamowienia.idzamowienia as "id", zamowienia.data as "data", klienci.imie as "imie", klienci.nazwisko as "nazwisko"  
from klienci, zamowienia 
where klienci.idklienta=zamowienia.idklienta
group by zamowienia.idzamowienia
Zad.8
select klienci.imie 
from klienci, zamowienia  
where zamowienia.idklienta=klienci.idklienta 
and zamowienia.idksiazki=2
Zad.9
select ksiazki.tytul, ksiazki.imieautora 
from ksiazki, klienci, zamowienia
where zamowienia.idklienta=klienci.idklienta 
and zamowienia.idksiazki=ksiazki.idksiazki 
and klienci.imie="Jan" 
and klienci.nazwisko="Nowak"
Zad.10
select klienci.idklienta, klienci.imie, klienci.nazwisko, zamowienia.data, zamowienia.status, ksiazki.tytul 
from klienci, ksiazki, zamowienia 
where zamowienia.idklienta=klienci.idklienta 
and zamowienia.idksiazki=ksiazki.idksiazki 
and klienci.nazwisko="Rutkowski" 
group by klienci.idklienta 
order by zamowienia.data asc
