<!doctype html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Biblioteka</title>
    <meta name="description" content="The HTML5 Herald">
    <meta name="author" content="SitePoint">
    <link rel="stylesheet" href="">
</head>

<body>
    <div class="div1">
        Navbar (logo, strona główna, logowanie) ---> dla NIE zalogowanego <br />
        Navbar (logo, strona główna, wypożyczenia, logaut) ---> dla zalogowanego <br />


        <br />Main page<br />

        NOWOŚCI (5 najnowszych książek z bazy) col-12<br />
        Wyszukiwanie ( ......(tytuł)............ lupa) col-12 <br />
        col-3/col-4 (lewa strona, menu) ------------- col-9, col-8 pozostała strona<br />
        Baza książek ------------- col-3 x 3, w każdym col-u będzie jedna książka (tytuł, autor, wydawnictwo, ilość dostępnych egzemplarzy, przycisk "zamów do wypożyczenia")<br />
        *autorzy (po kliknięciu rozwija się menu i tutaj są wypisani wszyscy autorzy z bazy, po kolejnym kliknięciu w autora
        X wyświetlają się wszystkie jego pozycje) </br>
        *kategorie (po kliknięciu rozwija się menu i tutaj są wypisani wszystkie kategorie z bazy, po kolejnym kliknięciu w autora X wyświetlają się wszystkie
        pozycje) <br />
        (*(if zalogowany) Moje wypożyczenia------------- <br />
        Wydawnictwa ------------- <br />
        Nasi pracownicy ------------- <br />
        kontakt ------------- <br />
        regulamin ------------- <br />
        kary ------------- <br />

        if(ID_Rola = pracownik przy zalogowaniu)
        Odseparowanie <br />

        Aktualizuj zbiory książek -> href do panelu z aktualizacją i dodawaniem książek (panel z książkami i możliwością aktualizacji
        ręcznej ilości egzemplarzy, dodawaniem nowych pozycji).


        Jeżeli jest wybrany autor, nad książkami wyświetla się imię, nazwisko, narodowość, data_urodzenia, data_śmierci col 9 nad książkami </br>
        Kategoria - podobna zasada co autor tyle, że wyświetli się nad ksiażkami sama nazwa <br />

        <br />Footer (col-4 x3 ---> wydawnictwa, baza książek, kontakt, regulamin, twoje konto, panel rejestracyjny) <br />
        (col-12 ---> Kamil Filar & Karol Bury all right reserved 2020) <br />


    </div>

</body>

</html>