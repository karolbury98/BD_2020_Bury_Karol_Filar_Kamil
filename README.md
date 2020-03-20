# BD_2020_Bury_Karol_Kamil_Filar
1.	Typ projektu: kursowy
2.	Projekt realizowany w zespole
3.	Projekt bazy danych dla biblioteki. Baza zawiera tabele: książki, autorzy, kategorie, wydawnictwa, wypożyczenia, kary, pracownicy, klienci, pracownicy_adres, klienci_adres. Relacje pomiędzy tabelami:
Autorzy: ID_Autora połączone relacją jeden do wielu z ID_Autora w tabeli Książki ponieważ jeden autor może napisać wiele książek
Kategorie: ID_Kategorii połączone relacją jeden do wielu z ID_Kategorii w tabeli Książki ponieważ wiele książek może być w jednej kategorii
Wydawnictwa: ID_Wydawnictwa jeden do wielu z ID_Wydawnictwa w tabeli książki ponieważ jedno wydawnictwo może wydać wiele książek
Kary: ID_Wypożyczenia jeden do jeden z ID_Wypożyczenia w tabeli Wypożyczenia ponieważ jedno wypożyczenie może mieć jedną karę za opóźniony zwrot
Książki: ID_Książki jeden do wielu z ID_Książki w tabeli Wypożyczenia ponieważ jedna książka może być wypożyczona wiele razy (w różnym czasie)
Pracownicy: ID_Pracownika jeden do wielu z ID_Pracownika w tabeli Wypożyczenia ponieważ jeden pracownik może obsługiwać wiele wypożyczeń
Klienci: ID_Klienta jeden do wielu z ID_Klienta w tabeli Wypożyczenia ponieważ jeden klient może wypożyczać książki wiele razy
Pracownicy_Adres: ID_Adresu jeden do jeden z ID_Adresu_Pracownika w tabeli Pracownicy ponieważ każdy pracownik ma jeden adres
Klienci_Adres: ID_Adresu jeden do jeden z ID_Adresu_Klienta w tabeli Klienci ponieważ każdy klient ma jeden adres.

