# BD_2020_Bury_Karol_Filar_Kamil
1.	Typ projektu: kursowy
2.	Projekt realizowany w zespole
3.	Projekt bazy danych dla biblioteki. Baza zawiera tabele: książki, autorzy, kategorie, wydawnictwa, wypożyczenia, kary, pracownicy, klienci, adresy, kary_wypożyczenia, autorzy_książki, logowanie, role. Relacje pomiędzy tabelami:
Autorzy: ID_Autora z tabeli łączącej Autorzy_Książki połączone relacją jeden do wielu z ID_Autora w tabeli Autorzy ponieważ jeden autor może napisać wiele książek, jedna książka może zostać napisana przez wielu autorów.
Kategorie: ID_Kategorii połączone relacją jeden do wielu z ID_Kategorii w tabeli Książki ponieważ wiele książek może być w jednej kategorii
Wydawnictwa: ID_Wydawnictwa jeden do wielu z ID_Wydawnictwa w tabeli książki ponieważ jedno wydawnictwo może wydać wiele książek
Kary: ID_Kary połączone relacją jeden do wielu z Kary_Wypożyczenia, ID_Wypożyczenia z tabeli Wypożyczenia połączone jeden do wielu z Kary_Wypożyczenia ponieważ wiele wypożyczeni może mieć wiele kar (za opóźnienie w zwrocie, zniszczenie książki itp.)
Książki: ID_Książki jeden do wielu z ID_Książki w tabeli Wypożyczenia ponieważ jedna książka może być wypożyczona wiele razy (w różnym czasie)
Pracownicy: ID_Pracownika jeden do wielu z ID_Pracownika w tabeli Wypożyczenia ponieważ jeden pracownik może obsługiwać wiele wypożyczeń
Klienci: ID_Klienta jeden do wielu z ID_Klienta w tabeli Wypożyczenia ponieważ jeden klient może wypożyczać książki wiele razy
Adresy: ID_Adresu połączone jeden do jeden z tabelami Pracownicy oraz Klienci
Logowanie: ID_Konta połączone jeden do jeden z ID_Konta w tabelach Pracownicy oraz Klienci, ID_Roli jeden do jeden z ID_Roli w tabeli Role
Relacje są również przedstawione w pliku „Diagram ERD.png”

