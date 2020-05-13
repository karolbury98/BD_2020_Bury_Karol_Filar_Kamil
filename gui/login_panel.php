<!doctype html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Biblioteka - logowanie</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="./css/ikona.ico" />
    <link rel="stylesheet" href="./css/main.css" />
</head>
<body> 
    <!--
    <div class="div1">
       
        Navbar (logo, strona główna, logowanie) > dla NIE zalogowanego <br />
        Navbar (logo, strona główna, wypożyczenia, logaut) > dla zalogowanego <br />
        <br /> Main page <br />
        Wyśrodkowany box na stronie, <br />
        input login, <br />
        input password, <br />
        (error - bad pas, bad login) <br />
        button submit <br />
        "Nie masz jeszcze konta, zarejestruj się!" <br />
        button registration_panel <br />
        <br /> Footer (col-4 x3 > wydawnictwa, baza książek, kontakt, regulamin, twoje konto, panel rejestracyjny) <br />
        (col-12 > Kamil Filar & Karol Bury all right reserved 2020) <br />
       
    </div> 
-->
<nav class="navbar navbar-expand-xl bg-dark navbar-dark justify-content-end fixed-top">
        <a class="navbar-brand logo" href="#"><img src="./CSS/Logo.png" class="Logostr"></a>
        <button class="navbar-toggler ml-auto mr-1" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent">
            <!-- Kolor napisu w navbarze: #F5BE27 -->
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse flex-grow-0 ml-auto mr-1 mt-1" id="navbarSupportedContent">
            <ul class="navbar-nav text-right">
                <li class="nav-item mt-1 mr-1">
                    <a class="nav-link text-center" href="index.php">STRONA GŁÓWNA</a>
                </li>
                <li class="nav-item mt-1 mr-1">
                    <a class="nav-link text-center" href="contact.php">KONTAKT</a>
                </li>
                    <!-- 
                        <?php
          //  if (isset($_SESSION['logged'])) {
          //      echo  '<li class="nav-item mt-1 mr-1 ">
          //                  <a class="nav-link text-center" href="user_account.php">WYPOŻYCZENIA</a>
          //                </li>';
           //     echo  '<li class="nav-item mt-1 mr-1 ">
          //                  <a class="nav-link text-center" href="user_account.php">MOJE KONTO</a>
          //                </li>';
          //      echo  '<li class="nav-item mt-1 mr-1">
          //                  <a class="nav-link text-center" href="logout.php">WYLOGUJ SIĘ</a>
         //                 </li>';
         //     } else {
          //      echo  '<li class="nav-item mt-1 mr-1">
         //               <a class="nav-link text-center" href="login_panel.php">ZALOGUJ SIĘ</a>
         //             </li>';
         //     }
              ?> 
              -->
              </ul>
          </div>
      </nav>
      <br /><br /><br /><br /><br /><br /><br />
            
    <div class="boxlogowanie">
        <label for="login"><b>Login</b></label>
        <input type="text" placeholder="Wpisz login" name="login" required></br></br>

        <label for="psw"><b>Hasło</b></label>
    <input type="password" placeholder="Wpisz hasło" name="psw" required></br></br>

    <button type="submit">Login</button></br></br>

    Nie masz jeszcze konta? Zarejestruj się!</br>
    <form action="registration_panel.php">
    <input type="submit" value="Przejdź do rejestracji" />
    </form>

  <!-- Footer -->
  <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>Nawigacja</h1>
                    <ul>
                        <a href="index.php">
                            <li>Baza książek</li>
                        </a>
                        <a href="publishing_house.php">
                            <li>Wydawnictwa</li>
                        </a>
                    </ul>
                </div>
                <div class="col">
                    <h1>Szybki dostęp</h1>
                    <ul>
                        <a href="contact.php">
                            <li>Kontakt</li>
                        </a>
                        <a href="https://pl.wikipedia.org/wiki/Regulamin">
                            <li>Regulamin</li>
                        </a>
                    </ul>
                </div>
                <div class="col">
                    <h1>Konto</h1>
                    <ul>
                        <a href="user_account.php">
                            <li>Twoje konto</li>
                        </a>
                        <a href="registartion_panel.php">
                            <li>Rejestracja</li>
                        </a>
                    </ul>
                </div>
                <div class="col social">
                    <h1>Znajdź nas</h1>
                    <ul>
                        <li><a href="https://www.facebook.com"><img src="./css/fb.png" width="32"
                                    style="width: 32px;"></a></li>
                        <li><a href="https://www.instagram.com"><img src="./css/instagram.png" width="32"
                                    style="width: 32px;"></a></li>
                        <li><a href="https://www.telegram.com"><img src="./css/telegram.png" width="32"
                                    style="width: 32px;"></a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-12 DownLable">
                    BD_2020_Bury_Karol_Filar_Kamil
                </div>
            </div>
        </div>
    </footer>
</body>

</html>
