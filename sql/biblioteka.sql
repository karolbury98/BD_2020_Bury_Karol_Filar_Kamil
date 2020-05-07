CREATE TABLE Adresy(
	ID_Adresu number(10) PRIMARY KEY,
	Miejscowosc varchar2(25),
	Ulica varchar2(25),
	Numer_domu varchar2(5),
	Numer_lokalu number(4),
	Kod_pocztowy varchar2(6)
);

CREATE TABLE Klienci(
	ID_Klienta number(10) PRIMARY KEY,
	ID_Adresu number(10),
	ID_Konta number(10),
	Imie varchar2(15),
	Nazwisko varchar2(15),
	Numer_telefonu number(9)
);

CREATE TABLE Pracownicy(
	ID_Pracownika number(10) PRIMARY KEY,
	ID_Adresu number(10),
	ID_Konta number(10),
	Imie varchar2(15),
	Nazwisko varchar2(15),
	PESEL number(11),
	Data_urodzenia date,
	Aktywne_badania varchar2(5)
);

CREATE TABLE Logowanie(
	ID_Konta number(10) PRIMARY KEY,
	ID_Roli number(10),
	Login varchar2(50),
	Haslo varchar2(50)
);

CREATE TABLE Role(
	ID_Roli number(10) PRIMARY KEY,
	Nazwa_roli varchar2(15)
);

CREATE TABLE Wypozyczenia(
	ID_Wypozyczenia number(10) PRIMARY KEY,
	ID_Ksiazki number(10),
	ID_Pracownika number(10),
	ID_Klienta number(10),
	Data_wypozyczenia date,
	Data_zwrotu date
);

CREATE TABLE Ksiazki(
	ID_Ksiazki number(10) PRIMARY KEY,
	ID_Kategorii number(10),
	ID_Wydawnictwa number(10),
	Tytul varchar2(25),
	Data_wydania date,
	Ilosc_egzemplarzy number(5)
);

CREATE TABLE Autorzy_Ksiazki(
	ID_Ksiazki number(10),
	ID_Autora number(10)
);

CREATE TABLE Autorzy(
	ID_Autora number(10) PRIMARY KEY,
	Imie varchar2(15),
	Nazwisko varchar2(15),
	Narodowosc varchar2(15),
	Data_urodzenia date,
	Data_smierci date
);

CREATE TABLE Kategorie(
	ID_Kategorii number(10) PRIMARY KEY,
	Nazwa varchar2(25)
);

CREATE TABLE Wydawnictwa(
	ID_wydawnictwa number(10) PRIMARY KEY,
	Nazwa varchar2(25),
	Miejscowosc varchar2(25),
	Ulica varchar2(25),
	Numer_budynku varchar2(15)
);

CREATE TABLE Kary(
	ID_Kary number(10) PRIMARY KEY,
	Typ_kary varchar2(25),
	Kwota_wynagradzajaca number(10)
);

CREATE TABLE Kary_Wypozyczenia(
	ID_Kary number(10),
	ID_Wypozyczenia number(10),
	Naleznosc number(10)
);

ALTER TABLE KLIENCI ADD FOREIGN KEY (ID_ADRESU) REFERENCES ADRESY (ID_ADRESU);
ALTER TABLE PRACOWNICY ADD FOREIGN KEY (ID_ADRESU) REFERENCES ADRESY (ID_ADRESU);
ALTER TABLE WYPOZYCZENIA ADD FOREIGN KEY (ID_KLIENTA) REFERENCES KLIENCI (ID_KLIENTA);
ALTER TABLE Klienci ADD FOREIGN KEY (ID_Konta) REFERENCES Logowanie (ID_Konta);
ALTER TABLE Logowanie ADD FOREIGN KEY (ID_Roli) REFERENCES Role (ID_Roli);
ALTER TABLE Pracownicy ADD FOREIGN KEY (ID_Konta) REFERENCES LOGOWANIE (ID_Konta);
ALTER TABLE Wypozyczenia ADD FOREIGN KEY (ID_Pracownika) REFERENCES Pracownicy (ID_Pracownika);
ALTER TABLE Wypozyczenia ADD FOREIGN KEY (ID_Ksiazki) REFERENCES Ksiazki (ID_Ksiazki);
ALTER TABLE KARY_WYPOZYCZENIA ADD FOREIGN KEY (ID_WYPOZYCZENIA) REFERENCES WYPOZYCZENIA (ID_WYPOZYCZENIA);
ALTER TABLE Kary_Wypozyczenia ADD FOREIGN KEY (ID_Kary) REFERENCES Kary (ID_Kary);
ALTER TABLE AUTORZY_KSIAZKI ADD FOREIGN KEY (ID_KSIAZKI) REFERENCES KSIAZKI (ID_KSIAZKI);
ALTER TABLE Autorzy_Ksiazki ADD FOREIGN KEY (ID_Autora) REFERENCES Autorzy (ID_Autora);
ALTER TABLE Ksiazki ADD FOREIGN KEY (ID_Kategorii) REFERENCES Kategorie (ID_Kategorii);
ALTER TABLE Ksiazki ADD FOREIGN KEY (ID_Wydawnictwa) REFERENCES Wydawnictwa (ID_Wydawnictwa)

	
