--------------------------------------------------------
--  File created - czwartek-maja-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type ROZNICA_DNI
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "STUDENT"."ROZNICA_DNI" AS VARRAY(200) OF NUMBER(20);

/
--------------------------------------------------------
--  DDL for Type TABLICA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "STUDENT"."TABLICA" AS VARRAY(200) OF VARCHAR2(20);

/
--------------------------------------------------------
--  DDL for Type TABLICA_L
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "STUDENT"."TABLICA_L" AS VARRAY(200) OF INTEGER(20);

/
--------------------------------------------------------
--  DDL for Sequence IDADRESU
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDADRESU"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDAUTORA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDAUTORA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 26 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDKARY
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDKARY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDKATEGORIA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDKATEGORIA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDKKLIENTA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDKKLIENTA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDKONTA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDKONTA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDKSIAZKI
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDKSIAZKI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDWYDAWNICTWA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDWYDAWNICTWA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IDWYPOZYCZENIA
--------------------------------------------------------

   CREATE SEQUENCE  "STUDENT"."IDWYPOZYCZENIA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table ADRESY
--------------------------------------------------------

  CREATE TABLE "STUDENT"."ADRESY" 
   (	"ID_ADRESU" NUMBER(10,0), 
	"MIEJSCOWOSC" VARCHAR2(25 BYTE), 
	"ULICA" VARCHAR2(25 BYTE), 
	"NUMER_DOMU" VARCHAR2(5 BYTE), 
	"NUMER_LOKALU" NUMBER(4,0), 
	"KOD_POCZTOWY" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTORZY
--------------------------------------------------------

  CREATE TABLE "STUDENT"."AUTORZY" 
   (	"ID_AUTORA" NUMBER(10,0), 
	"IMIE" VARCHAR2(15 BYTE), 
	"NAZWISKO" VARCHAR2(15 BYTE), 
	"NARODOWOSC" VARCHAR2(15 BYTE), 
	"DATA_URODZENIA" DATE, 
	"DATA_SMIERCI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTORZY_KSIAZKI
--------------------------------------------------------

  CREATE TABLE "STUDENT"."AUTORZY_KSIAZKI" 
   (	"ID_KSIAZKI" NUMBER(10,0), 
	"ID_AUTORA" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KARY
--------------------------------------------------------

  CREATE TABLE "STUDENT"."KARY" 
   (	"ID_KARY" NUMBER(10,0), 
	"TYP_KARY" VARCHAR2(25 BYTE), 
	"KWOTA_WYNAGRADZAJACA" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KARY_WYPOZYCZENIA
--------------------------------------------------------

  CREATE TABLE "STUDENT"."KARY_WYPOZYCZENIA" 
   (	"ID_KARY" NUMBER(10,0), 
	"ID_WYPOZYCZENIA" NUMBER(10,0), 
	"NALEZNOSC" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KATEGORIE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."KATEGORIE" 
   (	"ID_KATEGORII" NUMBER(10,0), 
	"NAZWA" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLIENCI
--------------------------------------------------------

  CREATE TABLE "STUDENT"."KLIENCI" 
   (	"ID_KLIENTA" NUMBER(10,0), 
	"ID_ADRESU" NUMBER(10,0), 
	"ID_KONTA" NUMBER(10,0), 
	"IMIE" VARCHAR2(15 BYTE), 
	"NAZWISKO" VARCHAR2(15 BYTE), 
	"NUMER_TELEFONU" NUMBER(9,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KSIAZKI
--------------------------------------------------------

  CREATE TABLE "STUDENT"."KSIAZKI" 
   (	"ID_KSIAZKI" NUMBER(10,0), 
	"ID_KATEGORII" NUMBER(10,0), 
	"ID_WYDAWNICTWA" NUMBER(10,0), 
	"TYTUL" VARCHAR2(25 BYTE), 
	"DATA_WYDANIA" DATE, 
	"ILOSC_EGZEMPLARZY" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOGOWANIE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."LOGOWANIE" 
   (	"ID_KONTA" NUMBER(10,0), 
	"ID_ROLI" NUMBER(10,0), 
	"LOGIN" VARCHAR2(50 BYTE), 
	"HASLO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNICY
--------------------------------------------------------

  CREATE TABLE "STUDENT"."PRACOWNICY" 
   (	"ID_PRACOWNIKA" NUMBER(10,0), 
	"ID_ADRESU" NUMBER(10,0), 
	"ID_KONTA" NUMBER(10,0), 
	"IMIE" VARCHAR2(15 BYTE), 
	"NAZWISKO" VARCHAR2(15 BYTE), 
	"PESEL" NUMBER(11,0), 
	"DATA_URODZENIA" DATE, 
	"AKTYWNE_BADANIA" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "STUDENT"."ROLE" 
   (	"ID_ROLI" NUMBER(10,0), 
	"NAZWA_ROLI" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WYDAWNICTWA
--------------------------------------------------------

  CREATE TABLE "STUDENT"."WYDAWNICTWA" 
   (	"ID_WYDAWNICTWA" NUMBER(10,0), 
	"NAZWA" VARCHAR2(25 BYTE), 
	"MIEJSCOWOSC" VARCHAR2(25 BYTE), 
	"ULICA" VARCHAR2(25 BYTE), 
	"NUMER_BUDYNKU" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WYPOZYCZENIA
--------------------------------------------------------

  CREATE TABLE "STUDENT"."WYPOZYCZENIA" 
   (	"ID_WYPOZYCZENIA" NUMBER(10,0), 
	"ID_KSIAZKI" NUMBER(10,0), 
	"ID_PRACOWNIKA" NUMBER(10,0), 
	"ID_KLIENTA" NUMBER(10,0), 
	"DATA_WYPOZYCZENIA" DATE, 
	"DATA_ZWROTU" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into STUDENT.ADRESY
SET DEFINE OFF;
Insert into STUDENT.ADRESY (ID_ADRESU,MIEJSCOWOSC,ULICA,NUMER_DOMU,NUMER_LOKALU,KOD_POCZTOWY) values ('4','Warszawa','Pilsudskiego','15',null,'23-456');
Insert into STUDENT.ADRESY (ID_ADRESU,MIEJSCOWOSC,ULICA,NUMER_DOMU,NUMER_LOKALU,KOD_POCZTOWY) values ('1','Rzeszow','Hetmanska','12',null,'35-083');
Insert into STUDENT.ADRESY (ID_ADRESU,MIEJSCOWOSC,ULICA,NUMER_DOMU,NUMER_LOKALU,KOD_POCZTOWY) values ('3','Warszawa','Taka','23',null,'99-999');
REM INSERTING into STUDENT.AUTORZY
SET DEFINE OFF;
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('6','Stephen','King','USA',to_date('47/09/21','RR/MM/DD'),null);
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('1','Henryk','Sienkiewicz','Polska',to_date('46/05/05','RR/MM/DD'),to_date('16/11/15','RR/MM/DD'));
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('2','Adam','Mickiewicz','Polska',to_date('58/12/24','RR/MM/DD'),to_date('55/11/26','RR/MM/DD'));
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('3','J. R. R.','Tolkien','Wielka Brytania',to_date('92/01/03','RR/MM/DD'),to_date('73/09/02','RR/MM/DD'));
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('24','Astrid','Lindgren','Szwecja',to_date('07/11/14','RR/MM/DD'),to_date('02/01/28','RR/MM/DD'));
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('25','Jan','Kochanowski','Polska',to_date('30/05/22','RR/MM/DD'),to_date('84/08/22','RR/MM/DD'));
Insert into STUDENT.AUTORZY (ID_AUTORA,IMIE,NAZWISKO,NARODOWOSC,DATA_URODZENIA,DATA_SMIERCI) values ('5','Ernest','Hemingway','USA',to_date('99/07/21','RR/MM/DD'),to_date('61/07/02','RR/MM/DD'));
REM INSERTING into STUDENT.AUTORZY_KSIAZKI
SET DEFINE OFF;
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('5','6');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('6','6');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('7','6');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('8','1');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('9','1');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('10','1');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('1','1');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('3','2');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('2','3');
Insert into STUDENT.AUTORZY_KSIAZKI (ID_KSIAZKI,ID_AUTORA) values ('4','1');
REM INSERTING into STUDENT.KARY
SET DEFINE OFF;
Insert into STUDENT.KARY (ID_KARY,TYP_KARY,KWOTA_WYNAGRADZAJACA) values ('5','Brak kary','0');
Insert into STUDENT.KARY (ID_KARY,TYP_KARY,KWOTA_WYNAGRADZAJACA) values ('4','Wyrwana strona','7');
Insert into STUDENT.KARY (ID_KARY,TYP_KARY,KWOTA_WYNAGRADZAJACA) values ('1','Zniszczona ksiazka','10');
Insert into STUDENT.KARY (ID_KARY,TYP_KARY,KWOTA_WYNAGRADZAJACA) values ('2','Zgubiona ksiazka','50');
Insert into STUDENT.KARY (ID_KARY,TYP_KARY,KWOTA_WYNAGRADZAJACA) values ('3','Dzien opoznienia','5');
REM INSERTING into STUDENT.KARY_WYPOZYCZENIA
SET DEFINE OFF;
Insert into STUDENT.KARY_WYPOZYCZENIA (ID_KARY,ID_WYPOZYCZENIA,NALEZNOSC) values ('3','4','10');
Insert into STUDENT.KARY_WYPOZYCZENIA (ID_KARY,ID_WYPOZYCZENIA,NALEZNOSC) values ('3','1','0');
Insert into STUDENT.KARY_WYPOZYCZENIA (ID_KARY,ID_WYPOZYCZENIA,NALEZNOSC) values ('3','3','0');
Insert into STUDENT.KARY_WYPOZYCZENIA (ID_KARY,ID_WYPOZYCZENIA,NALEZNOSC) values ('3','2','0');
REM INSERTING into STUDENT.KATEGORIE
SET DEFINE OFF;
Insert into STUDENT.KATEGORIE (ID_KATEGORII,NAZWA) values ('1','Przygodowa');
Insert into STUDENT.KATEGORIE (ID_KATEGORII,NAZWA) values ('2','Historyczna');
Insert into STUDENT.KATEGORIE (ID_KATEGORII,NAZWA) values ('3','Fantasy');
Insert into STUDENT.KATEGORIE (ID_KATEGORII,NAZWA) values ('4','Horror');
REM INSERTING into STUDENT.KLIENCI
SET DEFINE OFF;
Insert into STUDENT.KLIENCI (ID_KLIENTA,ID_ADRESU,ID_KONTA,IMIE,NAZWISKO,NUMER_TELEFONU) values ('1','1','2','Jan','Kowalski','789456123');
Insert into STUDENT.KLIENCI (ID_KLIENTA,ID_ADRESU,ID_KONTA,IMIE,NAZWISKO,NUMER_TELEFONU) values ('2','3','4','Jacek','Nowak','987654321');
REM INSERTING into STUDENT.KSIAZKI
SET DEFINE OFF;
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('5','4','1','Instytut',to_date('19/09/10','RR/MM/DD'),'5');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('6','4','2','Lsnienie',to_date('20/05/23','RR/MM/DD'),'11');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('7','4','3','To',to_date('20/05/07','RR/MM/DD'),'6');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('8','2','1','Krzyzacy',to_date('20/05/15','RR/MM/DD'),'10');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('9','2','3','Quo vadis',to_date('20/05/28','RR/MM/DD'),'5');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('10','1','2','Latarnik',to_date('46/05/24','RR/MM/DD'),'15');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('1','2','1','Ogniem i mieczem',to_date('20/05/19','RR/MM/DD'),'14');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('2','3','2','Pustkowie Smauga',to_date('20/02/12','RR/MM/DD'),'19');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('3','1','3','Pan Tadeusz',to_date('20/05/08','RR/MM/DD'),'3');
Insert into STUDENT.KSIAZKI (ID_KSIAZKI,ID_KATEGORII,ID_WYDAWNICTWA,TYTUL,DATA_WYDANIA,ILOSC_EGZEMPLARZY) values ('4','2','3','Potop',to_date('80/01/02','RR/MM/DD'),'8');
REM INSERTING into STUDENT.LOGOWANIE
SET DEFINE OFF;
Insert into STUDENT.LOGOWANIE (ID_KONTA,ID_ROLI,LOGIN,HASLO) values ('1','1','admin','admin');
Insert into STUDENT.LOGOWANIE (ID_KONTA,ID_ROLI,LOGIN,HASLO) values ('2','2','student','student');
Insert into STUDENT.LOGOWANIE (ID_KONTA,ID_ROLI,LOGIN,HASLO) values ('3','2','piotrek123','piotrek123');
Insert into STUDENT.LOGOWANIE (ID_KONTA,ID_ROLI,LOGIN,HASLO) values ('4','2','karol123','karol123');
REM INSERTING into STUDENT.PRACOWNICY
SET DEFINE OFF;
Insert into STUDENT.PRACOWNICY (ID_PRACOWNIKA,ID_ADRESU,ID_KONTA,IMIE,NAZWISKO,PESEL,DATA_URODZENIA,AKTYWNE_BADANIA) values ('1','4','1','Jan','Kowalski','90020203024',to_date('90/02/02','RR/MM/DD'),'Tak');
REM INSERTING into STUDENT.ROLE
SET DEFINE OFF;
Insert into STUDENT.ROLE (ID_ROLI,NAZWA_ROLI) values ('1','Administrator');
Insert into STUDENT.ROLE (ID_ROLI,NAZWA_ROLI) values ('2','Uzytkownik');
REM INSERTING into STUDENT.WYDAWNICTWA
SET DEFINE OFF;
Insert into STUDENT.WYDAWNICTWA (ID_WYDAWNICTWA,NAZWA,MIEJSCOWOSC,ULICA,NUMER_BUDYNKU) values ('1','Wydawnictwo CIS','Warszawa','Opoczynska','2a/5');
Insert into STUDENT.WYDAWNICTWA (ID_WYDAWNICTWA,NAZWA,MIEJSCOWOSC,ULICA,NUMER_BUDYNKU) values ('2','Wydawnictwo Bajka','Wroclaw','Rynek','5');
Insert into STUDENT.WYDAWNICTWA (ID_WYDAWNICTWA,NAZWA,MIEJSCOWOSC,ULICA,NUMER_BUDYNKU) values ('3','�wiat ksia�ki','Warszawa','Stefana Kazimierza','30');
Insert into STUDENT.WYDAWNICTWA (ID_WYDAWNICTWA,NAZWA,MIEJSCOWOSC,ULICA,NUMER_BUDYNKU) values ('4','Operon','Warszawa','Czarna','23');
REM INSERTING into STUDENT.WYPOZYCZENIA
SET DEFINE OFF;
Insert into STUDENT.WYPOZYCZENIA (ID_WYPOZYCZENIA,ID_KSIAZKI,ID_PRACOWNIKA,ID_KLIENTA,DATA_WYPOZYCZENIA,DATA_ZWROTU) values ('4','4','1','1',to_date('20/05/20','RR/MM/DD'),to_date('20/05/26','RR/MM/DD'));
Insert into STUDENT.WYPOZYCZENIA (ID_WYPOZYCZENIA,ID_KSIAZKI,ID_PRACOWNIKA,ID_KLIENTA,DATA_WYPOZYCZENIA,DATA_ZWROTU) values ('1','1','1','1',to_date('20/05/25','RR/MM/DD'),to_date('20/06/02','RR/MM/DD'));
Insert into STUDENT.WYPOZYCZENIA (ID_WYPOZYCZENIA,ID_KSIAZKI,ID_PRACOWNIKA,ID_KLIENTA,DATA_WYPOZYCZENIA,DATA_ZWROTU) values ('2','2','1','1',to_date('20/05/26','RR/MM/DD'),to_date('20/06/04','RR/MM/DD'));
Insert into STUDENT.WYPOZYCZENIA (ID_WYPOZYCZENIA,ID_KSIAZKI,ID_PRACOWNIKA,ID_KLIENTA,DATA_WYPOZYCZENIA,DATA_ZWROTU) values ('3','3','1','1',to_date('20/05/20','RR/MM/DD'),to_date('20/05/31','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Procedure ADD_ADRES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_ADRES" 
(v_idadresu IN ADRESY.ID_ADRESU%TYPE,
v_miejscowosc IN ADRESY.MIEJSCOWOSC%TYPE,
v_ulica IN ADRESY.ULICA%TYPE,
v_nrdomu IN ADRESY.NUMER_DOMU%TYPE,
v_nrlokalu IN ADRESY.NUMER_LOKALU%TYPE,
v_kodpocztowy IN ADRESY.KOD_POCZTOWY%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO ADRESY (ID_ADRESU, MIEJSCOWOSC, ULICA, NUMER_DOMU, NUMER_LOKALU, KOD_POCZTOWY)
    VALUES (v_idadresu, v_miejscowosc, v_ulica, v_nrdomu, v_nrlokalu, v_kodpocztowy);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;



/
--------------------------------------------------------
--  DDL for Procedure ADD_AUTOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_AUTOR" 
(v_idautora IN AUTORZY.ID_AUTORA%TYPE,
v_imie IN AUTORZY.IMIE%TYPE,
v_nazwisko IN AUTORZY.NAZWISKO%TYPE,
v_narodowosc IN AUTORZY.NARODOWOSC%TYPE,
v_data_urodzenia IN AUTORZY.DATA_URODZENIA%TYPE,
v_data_smierci IN AUTORZY.DATA_SMIERCI%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO AUTORZY (ID_AUTORA, IMIE, NAZWISKO, NARODOWOSC, DATA_URODZENIA, DATA_SMIERCI)
    VALUES (v_idautora, v_imie, v_nazwisko, v_narodowosc, v_data_urodzenia, v_data_smierci);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;


/
--------------------------------------------------------
--  DDL for Procedure ADD_KATEGORIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_KATEGORIA" 
(v_idkategorii IN KATEGORIE.ID_KATEGORII%TYPE,
v_nazwa IN KATEGORIE.NAZWA%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO KATEGORIE (ID_KATEGORII, NAZWA)
    VALUES (v_idkategorii, v_nazwa);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_KONTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_KONTO" 
(v_idkonta IN LOGOWANIE.ID_KONTA%TYPE,
v_idroli IN LOGOWANIE.ID_ROLI%TYPE,
v_login IN LOGOWANIE.LOGIN%TYPE,
v_haslo IN LOGOWANIE.HASLO%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO LOGOWANIE (ID_KONTA, ID_ROLI, LOGIN, HASLO)
    VALUES (v_idkonta,v_idroli,v_login,v_haslo);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;



/
--------------------------------------------------------
--  DDL for Procedure ADD_KSIAZKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_KSIAZKA" 
(v_idksiazki IN KSIAZKI.ID_KSIAZKI%TYPE,
v_idkategorii IN KSIAZKI.ID_KATEGORII%TYPE,
v_idwydawnictwa IN KSIAZKI.ID_WYDAWNICTWA%TYPE,
v_tytul IN KSIAZKI.TYTUL%TYPE,
v_data_wydania IN KSIAZKI.DATA_WYDANIA%TYPE,
v_ilosc_egzemplarzy IN KSIAZKI.ILOSC_EGZEMPLARZY%TYPE,
v_idautora IN AUTORZY.ID_AUTORA%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO KSIAZKI (ID_KSIAZKI, ID_KATEGORII, ID_WYDAWNICTWA, TYTUL, DATA_WYDANIA, ILOSC_EGZEMPLARZY)
    VALUES (v_idksiazki, v_idkategorii, v_idwydawnictwa, v_tytul, v_data_wydania, v_ilosc_egzemplarzy);
    commit;
    INSERT INTO AUTORZY_KSIAZKI (ID_KSIAZKI, ID_AUTORA)
    VALUES (v_idksiazki, v_idautora);
    commit;
    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;


/
--------------------------------------------------------
--  DDL for Procedure ADD_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_USER" 
(v_idklienta IN KLIENCI.ID_KLIENTA%TYPE,
v_idadresu IN KLIENCI.ID_ADRESU%TYPE,
v_idkonta IN KLIENCI.ID_KONTA%TYPE,
v_imie IN KLIENCI.IMIE%TYPE,
v_nazwisko IN KLIENCI.NAZWISKO%TYPE,
v_telefon IN KLIENCI.NUMER_TELEFONU%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO KLIENCI (ID_KLIENTA,ID_ADRESU, ID_KONTA, IMIE, NAZWISKO, NUMER_TELEFONU)
    VALUES (v_idklienta,v_idadresu,v_idkonta,v_imie, v_nazwisko, v_telefon);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;



/
--------------------------------------------------------
--  DDL for Procedure ADD_WYDAWNICTWO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_WYDAWNICTWO" 
(v_idwydawnictwa IN WYDAWNICTWA.ID_WYDAWNICTWA%TYPE,
v_nazwa IN WYDAWNICTWA.NAZWA%TYPE,
v_miejscowosc IN WYDAWNICTWA.MIEJSCOWOSC%TYPE,
v_ulica IN WYDAWNICTWA.ULICA%TYPE,
v_numer_budynku IN WYDAWNICTWA.NUMER_BUDYNKU%TYPE,
out_result OUT VARCHAR2)
AS
BEGIN
    INSERT INTO WYDAWNICTWA (ID_WYDAWNICTWA, NAZWA, MIEJSCOWOSC, ULICA, NUMER_BUDYNKU)
    VALUES (v_idwydawnictwa, v_nazwa, v_miejscowosc, v_ulica, v_numer_budynku);
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END;

/
--------------------------------------------------------
--  DDL for Procedure ADD_WYPOZYCZENIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."ADD_WYPOZYCZENIE" 
(v_idwypozyczenia IN WYPOZYCZENIA.ID_WYPOZYCZENIA%TYPE,
v_idksiazki IN WYPOZYCZENIA.ID_KSIAZKI%TYPE,
v_idpracownika IN WYPOZYCZENIA.ID_PRACOWNIKA%TYPE,
v_idklienta IN WYPOZYCZENIA.ID_KLIENTA%TYPE,
v_data_wypozyczenia IN WYPOZYCZENIA.DATA_WYPOZYCZENIA%TYPE,
v_data_zwrotu IN WYPOZYCZENIA.DATA_ZWROTU%TYPE,
v_idkary IN KARY_WYPOZYCZENIA.ID_KARY%TYPE,
v_naleznosc IN KARY_WYPOZYCZENIA.NALEZNOSC%TYPE,
out_result OUT VARCHAR2)
AS 
BEGIN
  INSERT INTO WYPOZYCZENIA (ID_WYPOZYCZENIA, ID_KSIAZKI, ID_PRACOWNIKA, ID_KLIENTA, DATA_WYPOZYCZENIA, DATA_ZWROTU)
  VALUES (v_idwypozyczenia, v_idksiazki, v_idpracownika, v_idklienta, v_data_wypozyczenia, v_data_zwrotu);
    commit;
    INSERT INTO KARY_WYPOZYCZENIA (ID_KARY, ID_WYPOZYCZENIA, NALEZNOSC)
    VALUES (v_idkary, v_idwypozyczenia, v_naleznosc);
    commit;
    UPDATE KSIAZKI 
    SET ILOSC_EGZEMPLARZY = ILOSC_EGZEMPLARZY -1
    WHERE ID_KSIAZKI = v_idksiazki;
    commit;

    out_result := 'TRUE';

    EXCEPTION
  WHEN OTHERS THEN 
  out_result := 'FALSE';
  ROLLBACK;
END ADD_WYPOZYCZENIE;

/
--------------------------------------------------------
--  DDL for Procedure DELETEWYP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."DELETEWYP" (j_idwyp IN INT)
IS
BEGIN
  DELETE KARY_WYPOZYCZENIA where ID_WYPOZYCZENIA = j_idwyp;
  COMMIT;
   DELETE WYPOZYCZENIA where ID_WYPOZYCZENIA = j_idwyp;
  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_ID_AUTORA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."GET_ID_AUTORA" 
(v_imie IN AUTORZY.IMIE%TYPE, v_nazwisko IN AUTORZY.NAZWISKO%TYPE, CURSOR8 OUT SYS_REFCURSOR)
as
BEGIN
OPEN CURSOR8 FOR
  select ID_AUTORA
  FROM AUTORZY
  WHERE IMIE = v_imie AND NAZWISKO = v_nazwisko;
END GET_ID_AUTORA;

/
--------------------------------------------------------
--  DDL for Procedure GET_ID_KATEGORII
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."GET_ID_KATEGORII" 
(v_nazwa IN KATEGORIE.NAZWA%TYPE, CURSOR7 OUT SYS_REFCURSOR)
as
BEGIN
OPEN CURSOR7 FOR
  select ID_KATEGORII
  FROM KATEGORIE
  WHERE NAZWA = v_nazwa;
END GET_ID_KATEGORII;

/
--------------------------------------------------------
--  DDL for Procedure GET_ID_KLIENTA_LOGIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."GET_ID_KLIENTA_LOGIN" 
(j_idkonta IN KLIENCI.ID_KONTA%TYPE,data OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN data FOR
    SELECT ID_KLIENTA
    FROM KLIENCI
    WHERE ID_KONTA = j_idkonta;
END;

/
--------------------------------------------------------
--  DDL for Procedure GET_ID_KSIAZKI_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."GET_ID_KSIAZKI_UPDATE" 
(v_tytul IN KSIAZKI.TYTUL%TYPE, CURSOR10 OUT SYS_REFCURSOR)
as
BEGIN
OPEN CURSOR10 FOR
  select ID_KSIAZKI
  FROM KSIAZKI
  WHERE TYTUL = v_tytul;
END GET_ID_KSIAZKI_UPDATE;

/
--------------------------------------------------------
--  DDL for Procedure GET_ID_WYDAWNICTWA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."GET_ID_WYDAWNICTWA" 
(v_nazwa IN WYDAWNICTWA.NAZWA%TYPE, CURSOR9 OUT SYS_REFCURSOR)
as
BEGIN
OPEN CURSOR9 FOR
  select ID_WYDAWNICTWA
  FROM WYDAWNICTWA
  WHERE NAZWA = v_nazwa;
END;

/
--------------------------------------------------------
--  DDL for Procedure LOGIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."LOGIN" 
(j_login IN LOGOWANIE.LOGIN%TYPE,j_haslo IN LOGOWANIE.HASLO%TYPE,data OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN data FOR
        Select ID_KONTA ,
ID_ROLI ,
LOGIN ,
HASLO 
        from LOGOWANIE
        Where LOGIN=j_login AND HASLO=j_haslo;
END;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_ADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_ADMIN" (ID_K IN NUMERIC,CURSOR1 OUT SYS_REFCURSOR) AS 
BEGIN
OPEN CURSOR1 FOR
SELECT
    IMIE,NAZWISKO,PESEL,DATA_URODZENIA,AKTYWNE_BADANIA
FROM PRACOWNICY
WHERE ID_KONTA=ID_K;
END SHOW_ADMIN;


/
--------------------------------------------------------
--  DDL for Procedure SHOW_AUTORZY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_AUTORZY" (
CURSOR_4 OUT SYS_REFCURSOR)
AS
BEGIN 
OPEN CURSOR_4 FOR
SELECT IMIE, NAZWISKO, NARODOWOSC, DATA_URODZENIA, DATA_SMIERCI
FROM AUTORZY;
END;



/
--------------------------------------------------------
--  DDL for Procedure SHOW_BOOKS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_BOOKS" (
CURSOR_1 OUT SYS_REFCURSOR)
AS
BEGIN
OPEN CURSOR_1 FOR
SELECT K.TYTUL, KA.NAZWA, A.IMIE, A.NAZWISKO, K.ILOSC_EGZEMPLARZY 
FROM KSIAZKI K
JOIN AUTORZY_KSIAZKI AK on K.ID_KSIAZKI = AK.ID_KSIAZKI 
JOIN AUTORZY A on AK.ID_AUTORA = A.ID_AUTORA
JOIN KATEGORIE KA on K.ID_KATEGORII = KA.ID_KATEGORII;
END;


/
--------------------------------------------------------
--  DDL for Procedure SHOW_BOOKS_ADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_BOOKS_ADMIN" (
CURSOR_11 OUT SYS_REFCURSOR)
AS
BEGIN
OPEN CURSOR_11 FOR
SELECT K.ID_KSIAZKI, K.TYTUL, KA.NAZWA, A.IMIE, A.NAZWISKO, K.ILOSC_EGZEMPLARZY 
FROM KSIAZKI K
JOIN AUTORZY_KSIAZKI AK on K.ID_KSIAZKI = AK.ID_KSIAZKI 
JOIN AUTORZY A on AK.ID_AUTORA = A.ID_AUTORA
JOIN KATEGORIE KA on K.ID_KATEGORII = KA.ID_KATEGORII;
END;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_KARY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_KARY" (
CURSOR_2 OUT SYS_REFCURSOR)
AS
BEGIN 
OPEN CURSOR_2 FOR
SELECT TYP_KARY, KWOTA_WYNAGRADZAJACA
FROM KARY;
END;



/
--------------------------------------------------------
--  DDL for Procedure SHOW_KATEGORIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_KATEGORIE" (
CURSOR_6 OUT SYS_REFCURSOR)
AS
BEGIN 
OPEN CURSOR_6 FOR
SELECT ID_KATEGORII, NAZWA
FROM KATEGORIE;
END;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_KLIENCI
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_KLIENCI" (ID_K IN NUMERIC,CURSOR1 OUT SYS_REFCURSOR) AS 
BEGIN
OPEN CURSOR1 FOR
SELECT IMIE,NAZWISKO,NUMER_TELEFONU,ADRESY.ID_ADRESU,MIEJSCOWOSC,ULICA,NUMER_DOMU,NUMER_LOKALU,KOD_POCZTOWY
FROM KLIENCI
JOIN ADRESY ON klienci.id_adresu = adresy.id_adresu
WHERE klienci.id_konta = ID_K;
END SHOW_KLIENCI;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_KLIENCI_ADMIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_KLIENCI_ADMIN" (
CURSOR_12 OUT SYS_REFCURSOR)
AS
BEGIN
OPEN CURSOR_12 FOR
SELECT ID_KLIENTA, IMIE, NAZWISKO, NUMER_TELEFONU
FROM KLIENCI;
END;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_WYDAWNICTWA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_WYDAWNICTWA" (
CURSOR_3 OUT SYS_REFCURSOR)
AS
BEGIN 
OPEN CURSOR_3 FOR
SELECT NAZWA, MIEJSCOWOSC, ULICA, NUMER_BUDYNKU
FROM WYDAWNICTWA;
END;



/
--------------------------------------------------------
--  DDL for Procedure SHOW_WYP_ADM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_WYP_ADM" (
CURSOR_5 OUT SYS_REFCURSOR)
AS
BEGIN
OPEN CURSOR_5 FOR
SELECT W.ID_WYPOZYCZENIA, KL.IMIE, KL.NAZWISKO, KL.NUMER_TELEFONU, K.TYTUL, A.IMIE, A.NAZWISKO, W.DATA_WYPOZYCZENIA, W.DATA_ZWROTU, KW.NALEZNOSC
FROM KSIAZKI K 
JOIN AUTORZY_KSIAZKI AK on K.ID_KSIAZKI = AK.ID_KSIAZKI 
JOIN AUTORZY A on AK.ID_AUTORA = A.ID_AUTORA
JOIN WYPOZYCZENIA W on K.ID_KSIAZKI = W.ID_KSIAZKI
JOIN KLIENCI KL on KL.ID_KLIENTA = W.id_klienta
JOIN KARY_WYPOZYCZENIA KW on KW.ID_WYPOZYCZENIA = W.ID_WYPOZYCZENIA;
END;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_WYPOZYCZENIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_WYPOZYCZENIA" (ID_K IN NUMERIC,CURSOR1 OUT SYS_REFCURSOR) AS 
BEGIN
OPEN CURSOR1 FOR
  SELECT TYTUL,NAZWA,IMIE,NAZWISKO,DATA_WYPOZYCZENIA,DATA_ZWROTU,NALEZNOSC FROM WYPOZYCZENIA
  JOIN kary_wypozyczenia on wypozyczenia.id_wypozyczenia = kary_wypozyczenia.id_wypozyczenia
  JOIN ksiazki on ksiazki.id_ksiazki = wypozyczenia.id_ksiazki
  JOIN kategorie on kategorie.id_kategorii = ksiazki.id_kategorii
  JOIN autorzy_ksiazki on autorzy_ksiazki.id_ksiazki = ksiazki.id_ksiazki
  JOIN autorzy on autorzy.id_autora = autorzy_ksiazki.id_autora
  WHERE ID_KLIENTA = ID_K;
END SHOW_WYPOZYCZENIA;

/
--------------------------------------------------------
--  DDL for Procedure SHOW_WYPOZYCZENIA2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."SHOW_WYPOZYCZENIA2" (ID_K IN NUMERIC,CURSOR12 OUT SYS_REFCURSOR) AS 
BEGIN
OPEN CURSOR12 FOR
  SELECT wypozyczenia.id_wypozyczenia,TYTUL,NAZWA,IMIE,NAZWISKO,DATA_WYPOZYCZENIA,DATA_ZWROTU,NALEZNOSC FROM WYPOZYCZENIA
  JOIN kary_wypozyczenia on wypozyczenia.id_wypozyczenia = kary_wypozyczenia.id_wypozyczenia
  JOIN ksiazki on ksiazki.id_ksiazki = wypozyczenia.id_ksiazki
  JOIN kategorie on kategorie.id_kategorii = ksiazki.id_kategorii
  JOIN autorzy_ksiazki on autorzy_ksiazki.id_ksiazki = ksiazki.id_ksiazki
  JOIN autorzy on autorzy.id_autora = autorzy_ksiazki.id_autora
  WHERE ID_KLIENTA = ID_K;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_KLIENCI_ADRES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."UPDATE_KLIENCI_ADRES" (ID_A IN INTEGER, J_MIEJSCOWOSC IN VARCHAR2, J_ULICA IN VARCHAR2, J_NUMER_DOMU IN VARCHAR2, J_NUMER_LOKALU IN VARCHAR2, J_KOD_POCZTOWY IN VARCHAR2) AS
BEGIN
UPDATE ADRESY
SET MIEJSCOWOSC = J_MIEJSCOWOSC, ULICA = J_ULICA, NUMER_DOMU = J_NUMER_DOMU, NUMER_LOKALU = J_NUMER_LOKALU, KOD_POCZTOWY = J_KOD_POCZTOWY
WHERE ID_ADRESU = ID_A;
END UPDATE_KLIENCI_ADRES;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_KLIENCI_DANE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."UPDATE_KLIENCI_DANE" (ID_K IN INTEGER, J_IMIE IN VARCHAR2, J_NAZWISKO IN VARCHAR2, J_NUMER_TELEFONU IN VARCHAR2) AS
BEGIN
UPDATE KLIENCI
    SET IMIE = J_IMIE, NAZWISKO = J_NAZWISKO, NUMER_TELEFONU = J_NUMER_TELEFONU
    WHERE ID_KONTA = ID_K;
END UPDATE_KLIENCI_DANE;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_KSIAZKI_ADM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."UPDATE_KSIAZKI_ADM" (ID_K IN INTEGER, J_ILOSC_EGZEMPLARZY IN INTEGER) AS
BEGIN
UPDATE KSIAZKI
    SET ILOSC_EGZEMPLARZY = J_ILOSC_EGZEMPLARZY
    WHERE ID_KSIAZKI = ID_K;
END UPDATE_KSIAZKI_ADM;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_WYP_ADM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "STUDENT"."UPDATE_WYP_ADM" (ID_W IN INTEGER, J_DATAZWROTU IN DATE, J_NALEZNOSC IN INTEGER) AS
BEGIN
UPDATE WYPOZYCZENIA
    SET DATA_ZWROTU = J_DATAZWROTU
    WHERE ID_WYPOZYCZENIA = ID_W;
UPDATE KARY_WYPOZYCZENIA
    SET NALEZNOSC = J_NALEZNOSC
    WHERE ID_WYPOZYCZENIA = ID_W;
END UPDATE_WYP_ADM;

/
--------------------------------------------------------
--  DDL for Function DATE_DIFF2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "STUDENT"."DATE_DIFF2" (J_ID IN INTEGER) 
  return number is 
  data_z_tabeli date;
begin
    Select DATA_ZWROTU into data_z_tabeli from WYPOZYCZENIA where ID_WYPOZYCZENIA = J_ID ORDER BY DATA_ZWROTU;
    return diffdate(data_z_tabeli, sysdate);   
end;

/
--------------------------------------------------------
--  DDL for Function DIFFDATE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "STUDENT"."DIFFDATE" (date1 in date, date2 in date)
return number is 
begin
  return date2-date1;

end;

/
--------------------------------------------------------
--  DDL for Function UPDATE_NALEZNOSC3
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "STUDENT"."UPDATE_NALEZNOSC3" (J_ID IN INTEGER) RETURN VARCHAR AS
  oplata number;
  roznica number;
begin
    roznica := date_diff2(J_ID);
    SELECT KWOTA_WYNAGRADZAJACA into oplata FROM KARY WHERE ID_KARY = 3;
    IF roznica>0 THEN
    UPDATE KARY_WYPOZYCZENIA SET NALEZNOSC = roznica*oplata WHERE ID_WYPOZYCZENIA = J_ID;
     return 'Dodano';
    END IF;
    return 'Nie zmieniono';
end;

/
--------------------------------------------------------
--  Constraints for Table WYDAWNICTWA
--------------------------------------------------------

  ALTER TABLE "STUDENT"."WYDAWNICTWA" ADD PRIMARY KEY ("ID_WYDAWNICTWA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KATEGORIE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KATEGORIE" ADD PRIMARY KEY ("ID_KATEGORII")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADRESY
--------------------------------------------------------

  ALTER TABLE "STUDENT"."ADRESY" ADD PRIMARY KEY ("ID_ADRESU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KLIENCI" ADD PRIMARY KEY ("ID_KLIENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KSIAZKI
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KSIAZKI" ADD PRIMARY KEY ("ID_KSIAZKI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."ROLE" ADD PRIMARY KEY ("ID_ROLI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTORZY
--------------------------------------------------------

  ALTER TABLE "STUDENT"."AUTORZY" ADD PRIMARY KEY ("ID_AUTORA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "STUDENT"."PRACOWNICY" ADD PRIMARY KEY ("ID_PRACOWNIKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WYPOZYCZENIA
--------------------------------------------------------

  ALTER TABLE "STUDENT"."WYPOZYCZENIA" ADD PRIMARY KEY ("ID_WYPOZYCZENIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOGOWANIE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."LOGOWANIE" ADD PRIMARY KEY ("ID_KONTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KARY
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KARY" ADD PRIMARY KEY ("ID_KARY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTORZY_KSIAZKI
--------------------------------------------------------

  ALTER TABLE "STUDENT"."AUTORZY_KSIAZKI" ADD FOREIGN KEY ("ID_KSIAZKI")
	  REFERENCES "STUDENT"."KSIAZKI" ("ID_KSIAZKI") ENABLE;
  ALTER TABLE "STUDENT"."AUTORZY_KSIAZKI" ADD FOREIGN KEY ("ID_AUTORA")
	  REFERENCES "STUDENT"."AUTORZY" ("ID_AUTORA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KARY_WYPOZYCZENIA
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KARY_WYPOZYCZENIA" ADD FOREIGN KEY ("ID_WYPOZYCZENIA")
	  REFERENCES "STUDENT"."WYPOZYCZENIA" ("ID_WYPOZYCZENIA") ENABLE;
  ALTER TABLE "STUDENT"."KARY_WYPOZYCZENIA" ADD FOREIGN KEY ("ID_KARY")
	  REFERENCES "STUDENT"."KARY" ("ID_KARY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KLIENCI" ADD FOREIGN KEY ("ID_ADRESU")
	  REFERENCES "STUDENT"."ADRESY" ("ID_ADRESU") ENABLE;
  ALTER TABLE "STUDENT"."KLIENCI" ADD FOREIGN KEY ("ID_KONTA")
	  REFERENCES "STUDENT"."LOGOWANIE" ("ID_KONTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KSIAZKI
--------------------------------------------------------

  ALTER TABLE "STUDENT"."KSIAZKI" ADD FOREIGN KEY ("ID_KATEGORII")
	  REFERENCES "STUDENT"."KATEGORIE" ("ID_KATEGORII") ENABLE;
  ALTER TABLE "STUDENT"."KSIAZKI" ADD FOREIGN KEY ("ID_WYDAWNICTWA")
	  REFERENCES "STUDENT"."WYDAWNICTWA" ("ID_WYDAWNICTWA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOGOWANIE
--------------------------------------------------------

  ALTER TABLE "STUDENT"."LOGOWANIE" ADD FOREIGN KEY ("ID_ROLI")
	  REFERENCES "STUDENT"."ROLE" ("ID_ROLI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "STUDENT"."PRACOWNICY" ADD FOREIGN KEY ("ID_ADRESU")
	  REFERENCES "STUDENT"."ADRESY" ("ID_ADRESU") ENABLE;
  ALTER TABLE "STUDENT"."PRACOWNICY" ADD FOREIGN KEY ("ID_KONTA")
	  REFERENCES "STUDENT"."LOGOWANIE" ("ID_KONTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WYPOZYCZENIA
--------------------------------------------------------

  ALTER TABLE "STUDENT"."WYPOZYCZENIA" ADD FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "STUDENT"."KLIENCI" ("ID_KLIENTA") ENABLE;
  ALTER TABLE "STUDENT"."WYPOZYCZENIA" ADD FOREIGN KEY ("ID_PRACOWNIKA")
	  REFERENCES "STUDENT"."PRACOWNICY" ("ID_PRACOWNIKA") ENABLE;
  ALTER TABLE "STUDENT"."WYPOZYCZENIA" ADD FOREIGN KEY ("ID_KSIAZKI")
	  REFERENCES "STUDENT"."KSIAZKI" ("ID_KSIAZKI") ENABLE;
