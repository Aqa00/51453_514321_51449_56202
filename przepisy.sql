-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `przepisy`
--

-- --------------------------------------------------------

--
-- Table structure for table `kolacje`
--


CREATE TABLE `kolacje` (
  `Id_posilku` int(3) NOT NULL,
  `Nazwa` text NOT NULL,
  `Obraz` text NOT NULL,
  `Czas_przygotowania` text NOT NULL,
  `Skladniki` text NOT NULL,
  `Sposob_przygotowania` text NOT NULL,
  `Tagi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kolacje`
--

INSERT INTO `kolacje` (`Id_posilku`, `Nazwa`, `Obraz`, `Czas_przygotowania`, `Skladniki`, `Sposob_przygotowania`, `Tagi`) VALUES
(7, 'Chrupiąca Kanapka z Boczkiem, Awokado i Pomidorem\r\n', '', 'do 15 minut', 'Chleb tostowy - 4 kromki\r\nMajonez - 4 łyżki\r\nAwokado - 1/2 sztuki\r\nBoczek wędzony - 4 plastry\r\nSałata - 1 garść\r\nPomidory - 1 sztuka\r\nMasło klarowane lub olej - 1/2 łyżki\r\nSól morska - do smaku\r\nŚwieżo mielony pieprz - do smaku\r\n', '1. Oprósz lekko kromki chleba tostowego oliwą i opiecz na patelni do uzyskania złotej barwy. Następnie, na jednej stronie każdej kromki, rozprowadź równomiernie majonez.\r\n2. Na posmarowane majonezem kromki, ułóż liście sałaty, następnie dodaj pokrojone w plastry awokado i pomidory. Przykryj każdą kanapkę dwoma plastrami chrupiącego boczku.\r\n3. Przypraw pomidory odrobiną soli morskiej i świeżo mielonego pieprzu, nałóż drugą kromkę chleba i delikatnie przyciśnij, aby składniki dobrze się połączyły.\r\n4. Przekrój każdą kanapkę na pół tworząc trójkąty. Podaj natychmiast lub zawij w papier śniadaniowy, jeśli zabierasz na wynos. Smacznego!\r\n5. Rozgrzej patelnię na średnim ogniu. Usmaż plastry boczku do uzyskania chrupkości - powinno to zająć około 3-4 minuty. Wyjmij boczek i połóż na ręczniku papierowym, by pozbyć się nadmiaru tłuszczu.\r\n', 'Warzywa\r\nNabiał\r\nMięso\r\nPrzyprawy\r\nKanapki\r\nChleby\r\n'),
(7, 'Sałatka krakowska\r\n', '', 'do 30 minut', '500 g gotowanej szynki w kawałku\r\n3 marchewki\r\n750 g ziemniaków\r\n3 ogórki kiszone\r\n150 g groszku konserwowego z puszki\r\n½ główki małego kalafiora\r\n\r\nDressing:\r\n50 g majonezu\r\n50 g jogurtu naturalnego\r\n1 łyżeczka musztardy sarepskiej\r\n½ łyżeczki soli\r\n½ łyżeczki czarnego pieprzu\r\n\r\nDodatkowo:\r\nnatka pietruszki do dekoracji\r\nsól do gotowania ziemniaków\r\n', '1. Ziemniaki obierz i ugotuj do miękkości w osolonej wodzie. Odcedź, ostudź i pokrój w średniej wielkości kostkę. Przenieś je do miski sałatkowej.\r\n2. Szynkę także pokrój w kostkę o podobnej wielkości co ziemniaki i dołóż je do nich.\r\n3. Marchewkę obierz i drobno posiekaj razem z ogórkami kiszonymi. Dodaj składniki do pozostałych, razem z odsączonym groszkiem.\r\n4. Kalafior umyj i podziel na różyczki. Te także posiekaj na mniejsze kawałki i przełóż do miski sałatkowej.\r\n5. Przygotuj dressing. \r\nW miseczce wymieszaj majonez z jogurtem i musztardą. Dodaj przyprawy. \r\nPrzygotowanym sosem zalej sałatkę i wszystko dobrze wymieszaj.\"\r\n6. Sałatkę krakowską wstaw do lodówki celem schłodzenia przez ok. 4 godziny. Podawaj na zimno, udekorowaną siekaną natką pietruszki. \r\n', 'Warzywa\r\nNabiał\r\nMięso\r\nPrzyprawy\r\nSałatka\r\n'),
(7, 'Szparagi w sałatce z kurczakiem\r\n', '', 'do 15 minut', 'szparagi zielone 1 pęczek\r\npomidorki kokrajlowe\r\nmix sałat\r\nczosnek 1 ząbek\r\npierś kurczaka\r\nczosnek granulowany 1/2 łyżeczki\r\noliwa z oliwek\r\nsól i pieprz do smaku\r\npłatki chili\r\nbazylia kilka liści\r\n', '1. Pierś z kurczaka doprawiamy granulowanym czosnkiem, solą i pieprzem oraz płatkami chili. Kroimy w paski. Odstawiamy na chwilę do marynaty.\r\n2. Szparagi kroimy w 1 cm kawałki a końcówki zostawiamy nie krojone.\r\n3. Rozgrzewamy oliwę dodajemy czosnek pokrojony w plasterki i  dodajemy szparagi - chwilę podsmażamy. Przekładamy do miski obok.\r\n4. Na tej samej patelni smażymy kuraczka, dodajemy wcześniej podsmażone szparagi i wlewamy łyżkę soku z cytryny. Mieszamy.\r\n5. W misce wykładamy sałaty i przekładamy szparagi z kurczakiem. Dodajemy pomidorki i listki bazylii.\r\n', 'Warzywa\r\nMięso\r\nPrzyprawy\r\nSałatka\r\n'),
(8, 'Lekka sałatka z kiełkami na kolację\r\n', '', 'do 15 minut', 'Mix sałat - garść\r\n1 papryka\r\n1 pomidor\r\n1 cebula\r\nGarść kiełek z brokuła\r\nSól włoska\r\n1 łyżka jogurtu greckiego\r\n1 łyżka musztardy francuskiej\r\n', '1. Do miski włóż sałatę i kiełki, dodaj pokrojoną cebulę, paprykę i pomidora. \r\n2. Dodaj jogurt i musztardę dopraw do smaku solą włoską\r\n3. Wymieszaj.\r\n', 'Warzywa\r\nNabiał\r\nPrzyprawy\r\nSałatka\r\n'),
(8, 'Omlet\r\n', '', 'do 15 minut', '3 jajka\r\n1 łyżka wody\r\n1 łyżeczka mąki pszennej\r\n40 g dodatków (szynka, papryka)\r\nsól\r\npieprz\r\nmasło do smażenia\r\n', '1. Jajka delikatnie roztrzepać w miseczce, dodać wodę, mąkę, doprawić do smaku solą i pieprzem.\r\n2. Na patelni rozgrzać masło, wylać masę jajeczną, posypać ulubionymi dodatkami, smażyć aż jajka się zetną, odwrócić i smażyć jeszcze chwilę.\r\n3. Podawać na ciepło.\r\n', 'Warzywa\r\nJajka\r\nPrzyprawy\r\nSałatka\r\n'),
(8, 'Twarożek kokosowo pomarańczowy\r\n', '', 'do 15 minut', '1 opakowanie sera twarogowego 200 g\r\npół kubeczka jogurtu naturalnego 75 ml ( moze być też mleczko kokosowe)\r\nskórka pomarańczowa\r\nmiód 1 łyżka\r\nwiórki kokosowe 1-2 łyżek\r\n', '1. Twaróg umieść w miseczce, rozdrobnij, wlej jogurt oraz 1-2 łyżki miodu. Wymieszaj.\r\n2. Dodaj wiórki kokosowe i skórkę pomarańczową.\r\n3. Podawaj ze świeżo wyciśniętym sokiem pomarańczowym, świeżym pieczywem i konfiturą.\r\n', 'Nabiał'),
(9, 'Sałatka z kuskusem\r\n', '', 'do 15 minut', '250 g papryki czerwonej\r\n200 g zielonego ogórka\r\n130 g pomidora\r\n100 g kaszy kuskus\r\n2 łyżeczki oliwy\r\n1 łyżka cytryny\r\npół pęczka pietruszki\r\npieprz ziołowy\r\nsól\r\n', '1. Kaszę przesyp do miski, zalej wrzątkiem (woda powinna sięgać odrobinę ponad poziom kaszy).\r\n2. Przykryj talerzem i odstaw na 10 minut. Po upływie czasu przemieszaj widelcem.\r\n3. Paprykę i ogórka umyj i pokrój w kostkę.\r\n4. Pomidora sparz wrzątkiem, obierz ze skórki i także pokrój w kostkę.\r\n5. Pietruszkę drobno posiekaj.\r\n6. Do większej miski przełóż kaszę, dodaj wszystkie warzywa i dokładnie wymieszaj.\r\n7. Oliwę połącz z sokiem z cytryny i przyprawami, dressingiem polej gotową sałatkę.\r\n', 'Wegańskie\r\nWarzywa\r\nSałatka\r\n'),
(9, 'Pasta z czerwonej fasoli\r\n', '', 'do 15 minut', '1 puszka czerwonej fasoli\r\n1 cebula\r\n2 łyżki oleju\r\nsól i pieprz do smaku\r\n1 łyżeczka marynowanego pieprzu zielonego\r\n', '1. Cebulę pokroić w kostkę i zeszklić na oleju.\r\n2. Fasolę odsączyć z zalewy, przełożyć do rozdrabniacza i zmiksować z cebulką na pastę.\r\n3. Doprawić solą i pieprzem oraz dodać łyżeczkę zielonego marynowanego pieprzu. \r\n4. Pozdawać z grzanką z chleba żytniego na zakwasie, kiszonym ogórkiem i natką.\r\n', 'Wegańskie\r\nWarzywa\r\nKanapki\r\nPasta\r\n'),
(9, 'Pudding chia z matchą\r\n', '', 'do 15 minut', '2 łyżeczki sproszkowanej matchy\r\n1 szklanka napoju roślinnego\r\n1/4 szklanki nasion chia\r\npół łyżki syropu klonowego lub miodu\r\nulubione dodatki do podania\r\n', '1. Wieczór wcześniej: do dużej miski wlać mleko i dodać matchę. Wymieszać na gładką masę, by nie było żadnych grudek. Dodać nasiona chia i syrop klonowy lub miód. Wymieszać wszystko dokładnie na gładką masę.\r\n2. Opcjonalnie przełożyć masę z miski do słoika, jeżeli jest to ulubiony sposób spożywania chii.\r\n3. Umieścić słoiki lub miskę w lodówce i trzymać tam masę przez całą noc.\r\n4. Rano wyciągnąć i udekorować ulubionymi dodatkami (świetnie sprawdzą się owoce i granola).\r\n', 'Wegańskie\r\nPudding\r\nChia\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `obiady`
--

CREATE TABLE `obiady` (
  `Id_posilku` int(3) NOT NULL,
  `Nazwa` text NOT NULL,
  `Obraz` text NOT NULL,
  `Czas_przygotowania` text NOT NULL,
  `Skladniki` text NOT NULL,
  `Sposob_przygotowania` text NOT NULL,
  `Tagi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obiady`
--

INSERT INTO `obiady` (`Id_posilku`, `Nazwa`, `Obraz`, `Czas_przygotowania`, `Skladniki`, `Sposob_przygotowania`, `Tagi`) VALUES
(4, 'Filety drobiowe w sosie koperkowym\r\n', '', 'do 30 minut', '400 g filetów z piersi kurczaka\r\n200 ml śmietany 18 proc.\r\n100 ml woda\r\n1 szalotka\r\n2 ząbki czosnku\r\npęczek koperku\r\nsłodka papryka\r\nsól i pieprz do smaku\r\n2 łyżki oliwy z oliwek\r\n', '1. Filety z kurczaka podziel na cienkie plastry, obsyp je słodką papryką, solą i pieprzem.\r\n2. Na patelni rozgrzej oliwę, posiekany czosnek i szalotkę, delikatnie go zarumień, następnie usmaż filety na złoty kolor.\r\n3. Dodaj śmietanę, oraz odrobinę wody. Duś wszystko przez 15 minut. Pod koniec wsyp posiekany koperek. W razie potrzeby podlej całość odrobiną wody.\r\n', '#Warzywa #Mięso #Przyprawy #Kotlety #Kremy\r\n'),
(4, 'Zapiekanka ziemniaczana z mozzarellą\r\n', '', 'do 30 minut', '1 kg. ziemniaków,\r\n1 kg. pieczarek\r\n2 kawałki kiełbasy podwawelskiej,\r\n2 cukinie,\r\n2 papryki czerwone,\r\n400 g. startej mozzarelli,\r\nsól i pieprz świeżo mielony do smaku,\r\n3 cebule,\r\n2 łyżki oleju,\r\nmasło klarowne 2 łyżki,\r\n', '1. Ziemniaki po obraniu myjemy, kroimy w plastry, paprykę oczyszczamy z gniazd nasiennych i kroimy w większą kostkę.      \r\n2. Cebulę po obraniu kroimy w piórka,  cukinie po umyciu i osuszeniu kroimy w grubsze plastry.\r\n3. Kielbasę obieramy ze skóry i kroimy w plasterki.\r\n4. Pieczarki obieramy i kroimy w większą kostkę.\r\n5. Pokrojone pieczarki oraz kielbasę podsmażamy na rozgrzanym maśle klarownym. \r\n6. Wszystkie składniki wkładamy do większej miski , doprawiamy pieprzem i solą dodajemy startą mozzarellę i mieszamy.\r\n7. Brytfankę lub naczynie żaroodporne smarujemy olejem , wkładamy wymieszane składniki.\r\n8. Wkładamy do piekarnika i pieczemy około 90 minut w  180 stopniach.\r\n', 'Warzywa\r\nNabiał\r\nMięso\r\nGrzyby\r\nPrzyprawy\r\nZapiekanki\r\nKiełbasy\r\n'),
(4, 'Sałatka z aromatyczną kaczką\r\n', '', 'do 15 minut', '2 piersi z kaczki\r\n1 łyżeczka przyprawy \"pięciu smaków\" lub do chińszczyzny\r\n2 cm tartego drobno świeżego imbiru\r\nopakowanie szpinaku baby\r\ndymka do smaku\r\nświeża kolendra (dużo)\r\n\r\nSOS:\r\nsok z połówki pomarańczy lub ocet jabłkowy\r\noliwa z oliwek 1 łyżka\r\n2 łyżki sosu sojowego\r\npapryczka chili pokrojona ( czerwona dla koloru)\r\ntrochę oleju z sezamu\r\nfileciki z pomarańczy\r\n', '1. Piersi z kaczki umyć i wysuszyć papierowym ręcznikiem, natrzeć delikatnie przyprawą pięciu smaków i tartym imbirem, posolić z dwóch stron. Skórę naciąć w krateczkę aby tłuszcz się wytopił. \r\n2. Włączyć patelnię grillową i grillować aż do całkowitego wytopienia się tłuszczu z kaczki. Potem przełożyć na drugą stronę.\r\n3. Ostawić na kilka minut aby mięso odpoczęło.\r\n4. Zrobić sos z wyżej wymienionych składników. \r\n5. Na talerzu rozłożyć szpinak, potem kaczkę, fileciki z pomarańczy i polać całość sosem. \r\n6. Na wierzch posypać posiekaną dymkę i kolendrę.\r\n', 'Warzywa\r\nMięso\r\nPrzyprawy\r\nKeto\r\n'),
(5, 'Zapiekanka obiadowa z jajkiem sadzonym\r\n', '', 'do 30 minut', '500 g brokułów\r\n3 papryki – zielona, żółta i czerwona\r\n1 cebula\r\n3 ząbki czosnku\r\n2 pomidory z dużą zawartością miąższu\r\n80 g żółtego sera\r\n5 jajek\r\n2 łyżki oliwy lub masła\r\nsól i czarny pieprz\r\n½ łyżeczki płatków czerwonej papryki lub słodkiej papryki mielonej\r\n', '1. Brokuł podziel na małe różyczki i ugotuj na parze przez ok. 5 minut, po czym przelej zimną wodą. Odcedź na durszlaku i odłóż na bok. Paprykę oczyść z nasion i błonek, pokrój w kostkę. Pomidory sparz wrzątkiem, zdejmij skórkę i pokrój na mniejsze kawałki.\r\n2. Rozgrzej patelnię z tłuszczem, dodaj drobno posiekaną cebulką i smaż przez 2 minuty na średnim ogniu, po czym dodaj czosnek i trzymaj jeszcze chwilę, aż wszystko zacznie pachnieć. Dorzuć pokrojone w kostkę pomidory, dopraw solą i czarnym pieprzem, ewentualnie oregano. Duś około 5 minut.\r\n3. Podsmażone warzywa przełóż do ceramicznej foremki (ok. 20 x 20 cm), rozłóż i równomiernie rozsyp brokuły. Posyp żółtym serem i zrób 5 wgłębień, po czym wbij w nie jajka. Posyp całość płatkami czerwonej papryki, wstaw do pieca nagrzanego do 200°C i piecz ok. 15 minut. Jeśli lubisz lekko rozlewające się jajka, wbij je do zapiekanki w trakcie pieczenia i trzymaj 7-10 minut. Zapiekankę obiadową z jajkiem sadzonym wyjmij z piekarnika, odstaw na 5 minut i przekładaj na talerze.\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nPrzyprawy\r\nPłatki\r\nZapiekanki\r\nJajka\r\n'),
(5, 'Wegetariańskie naleśniki zapiekane\r\n', '', 'do 30 minut', 'Ciasto:\r\n2 duże jajka\r\n250 ml gazowanej wody mineralnej\r\n250 ml mleka\r\n375 g mąki\r\n45 ml oleju\r\nszczypta soli\r\nszczypta kurkumy\r\n\r\nNadzienie:\r\n200 g pieczarek\r\n200 g szpinaku mrożonego\r\n2 duże cebule\r\n1 papryka\r\n1 opakowanie mieszanki warzyw na patelnię\r\n1 duże jajko\r\nszczypta soli i pieprzu do smaku\r\n5 g papryki słodkiej mielonej\r\n5 g papryki chili\r\n5 g ziół prowansalskich\r\nolej do smażenia\r\n', '1. Do miski wbij jajka i rozkłóć je. Wlej mleko i wodę mineralną i wymieszaj wszystko. Następnie dodaj mąkę przesianą przez sitko, sól i kurkumę i wymieszaj energicznie wszystko, aż ciasto będzie gładkie bez grudek. Na końcu dodaj olej i wymieszaj ponownie wszystko. Ciasto odstaw na 20-30 minut, aby odpoczęło.\r\n2. Naleśniki smaż na dobrze rozgrzanej patelni z obu stron.\r\n3. Cebulę obierz i posiekaj na drobno. Podsmaż ją do zeszklenia na patelni. Paprykę umyj, usuń nasiona i pokrój na małe kawałki. Dodaj do cebuli. Pieczarki obierz i pokrój w drobną kostkę, a następnie wrzuć na patelnię. Smaż wszystko do momentu, aż warzywa puszczą wodę. Po tym czasie dodaj mrożony szpinak. Wszystko duś na małym ogniu, aż cały szpinak się rozmrozi. Na końcu dodaj warzywa na patelnię i smaż aż się rozmrożą, a cała woda z warzyw wyparuje.\r\n4. Przypraw warzywa solą, pieprzem i obiema paprykami, a także mieszanką przypraw dołączoną do warzyw na patelnię. Odstaw do lekkiego ostygnięcia, a następnie wbij jajko i dokładnie wymieszaj.\r\n5. Na naleśniki równomiernie wyłóż nadzienie i złóż w kopertę. Oprósz na niedużą ilością sera (dobrze sprawdzi się parmezan lub też inny, ulubiony rodzaj). Wstaw do piekarnika nagrzanego do 180 stopni i zapiekaj przez około 15 minut. Podawaj na ciepło, ale na zimno też będą smakowały.\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nPrzyprawy\r\nGrzyby\r\nJajka\r\n'),
(5, 'Kotlety z kaszy gryczanej i twarogu\r\n', '', 'do 30 minut', '1 litr wody\r\n360 g kaszy gryczanej palonej\r\n150 g twarogu\r\n20 g bułki tartej\r\n2 cebule\r\n2 jajka\r\n2 ząbki czosnku\r\n2 łyżeczki suszonego majeranku\r\nsól\r\npieprz\r\n\r\nDodatkowo:\r\n50 g bułki tartej\r\nolej do smażenia\r\n', '1. Cebule pokrój w drobną kostkę i zeszklij na odrobinie oleju.\r\n2. Do garnka wlej 1 litr wody, dodaj sól i zagotuj. Gdy woda zacznie wrzeć wsyp kaszę i gotuj przez 12 minut. Odcedź i odstaw do przestudzenia.\r\n3. Połowę kaszy gryczanej z miksuj z twarogiem. Powstałą masę wymieszaj z pozostałą kaszą, podsmażoną cebulą, przeciśniętym przez praskę czosnkiem oraz przyprawami. Następnie dodaj jajka i bułkę tartą, ponownie wymieszaj.\r\n4. Wilgotnymi rękami formuj niewielkie kotleciki. Każdy z nich obtocz bułce tartej i smaż na rozgrzanym oleju na złoty kolor.\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nPrzyprawy\r\nKotlety\r\nJajka\r\nKasza\r\n'),
(6, 'Ziemniaki z cieciorką i papryką padrón\r\n', '', 'do 15 minut', 'Ziemniaki:\r\nZiemniaki - 1,5kg\r\nOlej - 2 łyżki\r\nCebula - 2szt (razem ze szczypiorem)\r\nCzosnek - 2 ząbki\r\nPapryczka ostra - 1szt\r\nPomidory krojone (z puszki) - 400g\r\nPrzyprawa do burrito (lub inna meksykańska) - 2 łyżeczki\r\nCiecierzyca gotowana (z puszki) - 220g\r\nŚwieża kolendra - liście\r\n\r\nPapryki:\r\nPapryki padrón - 250g\r\nMasło klarowane (lub oliwa) - 1 łyżka\r\nSól i pieprz do smaku (najlepiej świeżo mielone)\r\n', '1. Cebulę i papryczkę ostrą kroimy w kostkę, szczypiorek siekamy, czosnek przeciskamy. Smażymy na oleju kilka minut. Zdejmujemy z patelni.\r\nZiemniaki dokładnie szorujemy i kroimy w plasterki. Dodajemy na patelnię i smażymy, aż lekko się zarumienią. Dodajemy z powrotem cebulę, czosnek i papryczkę, dolewamy pomidory, pół szklanki wody i przyprawę meksykańską. Przykrywamy pokrywką i dusimy na małym ogniu, aż ziemniaki będą miękkie (około 20 minut). W razie potrzeby dolewamy trochę wody i mieszamy. Dodajemy odcedzoną cieciorkę i dusimy jeszcze 5 minut.\r\n2. Papryki padrón przygotowujemy w tradycyjny hiszpański sposób, czyli bardzo prosto. Papryczki myjemy, osuszamy. Wrzucamy na patelnię z rozgrzanym tłuszczem (tradycyjnie jest to oliwa, ale masło klarowane też sprawdziło się super). Obsypujemy solą i pieprzem. Smażymy, aż zarumieni się z każdej strony, a na skórce zrobią się bąble.\r\n3. Na talerze nakładamy porcję ziemniaków i posypujemy świeżą posiekaną kolendrą. Obok dajemy papryczki - jemy je łapiąc za ogonek.\r\n', 'BezGlutenu\r\nWegańskie\r\nWarzywa\r\nPrzyprawy\r\n'),
(6, 'Kapusta pieczona w ostrym sosie pomidorowym\r\n', '', 'do 60 minut', '1 główka kapusty (biała albo włoska)\r\n3 łyżki oleju\r\n\r\nSOS:\r\n1 łyżka pasty gochujang (koreańska pasta chilli, można zastąpić inną pastą/sosem chilli)\r\n4 ząbki czosnku drobno pokrojone\r\n2 łyżki przecieru pomidorowego\r\n3 łyżki sosu sojowego\r\n1 łyżeczka oleju sezamowego ( można pominąć)\r\n1 łyżeczka cukru\r\n1 łyżka skrobi kukurydzianej albo ziemniaczanej\r\n2 szklanki szklanki wody\r\n', '1. Kapustę podzielić na ćwiartki i potem każdą z nich jeszcze przekroić na dwie albo trzy części ( w zależności od wielkości).\r\n2. Na patelni rozgrzać olej i obsmażać kawałki kapusty z obu stron żeby wyraźnie się przyrumieniły. Przełożyć do naczynia do zapiekania.\r\n3. Składniki sosu dokładnie wymieszać w garnku (za pomocą rózgi najlepiej), następnie gotować na małym ogniu aż sos zgęstnieje i lekko się zredukuje.\r\n4. Zalać kapustę sosem, przykryć folią albo przykrywką i wstawić do piekarnika nagrzanego do 180 stopni.\r\n5. Piec ok 45 minut. \r\n6. Podawać z ryżem, posypane sezamem i szczypiorkiem.\r\n', 'Wegańskie\r\nWarzywa\r\nPrzyprawy\r\n'),
(6, 'Placki dyniowe bezglutenowe\r\n', '', 'do 15 minut', '400 g dyni, startej na dużych oczkach tarki\r\n1 średnia marchewka starta na małych oczkach tarki\r\n1 średni ziemniak starty na małych oczkach tarki – odciśnij nadmiar soku z ziemniaka\r\n2 łyżki mąki kukurydzianej (mąki, a nie skrobi)\r\nnatka zielonej pietruszki, posiekana\r\n2 ząbki czosnku, przeciśnięte przez praskę\r\n2 jajka\r\nsól, pieprz czarny, słodka papryka w proszku – do smaku\r\ntłuszcz do smażenia\r\nsos tzatziki (lub inny dowolny sos) do podania\r\n', '1. Na początku oczyść dynię z wnętrza i pestek oraz obierz ze skóry. 400 g tak oczyszczonej dyni zetrzyj na dużych oczkach tarki.\r\n2. W dużej misce umieść dynię, marchewkę, ziemniak, czosnek i natkę pietruszki.\r\n3. W innym naczyniu roztrzep 2 jajka, a następnie dodaj je do miski z warzywami i wymieszaj. Ja zapomniałam roztrzepać jajka i dodałam je w całości wprost do miski z warzywami i też wszystko się udało, więc pewnie można pominąć ten etap roztrzepywania\r\n\"4. Dodaj do smaku sproszkowaną słodką paprykę (łyżeczka), mielony pieprz (pół łyżeczki) i sól (pół łyżeczki).\r\nNa koniec dodaj jeszcze mąkę kukurydzianą i wymieszaj ciasto dokładnie.\"\r\n5. Na dużej patelni rozgrzej tłuszcz (można poczytać na blogu, jaki tłuszcz jest najlepszy do smażenia), a następnie nakładaj porcje ciasta na placki. Rozpłaszczaj ciasto łyżką i smaż placki z obu stron na złoty kolor.\r\n6. Po zdjęciu z patelni układaj je na talerzu wymoszczonym ręcznikiem papierowym, aby odsączyć nadmiar tłuszczu.\r\n7. Placki dyniowe z mąką kukurydzianą chłoną stosunkowo mało tłuszczu, ale i tak warto odsączyć jego nadmiar. Placuszki mają piękny, rozweselający kolor i dość neutralny smak, w którym nie dominuje żaden ze składników. Z podanej porcji udało mi się usmażyć 14 placków (wszystkie widoczne na zdjęciu i jeszcze trzy, które znalazły się poza kadrem). To wystarczy, żeby nakarmić 2-3 dorosłe osoby.\r\n8. Usmażone placki z dyni podawaj z dowolnym sosem – u mnie był to sos tzatiki, choć zazwyczaj nie używam zimą zielonych ogórków, bo to nie jest sezon na ogórki. Zimą zielone ogórki są zwykle wypędzone, niesmaczne i oczywiście drogie, więc ich nie kupuję. Robię to jedynie wyjątkowo, dwa lub trzy razy przez całą zimę i tylko do sosu.\r\n9. Ale do placków nie musi być sos z ogórka, można puścić wodze fantazji i zaszaleć, używając innego pasującego sosu.\r\n', 'Wegańskie\r\nWarzywa\r\nPrzyprawy\r\nBezGlutenu\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `rodzaje_posilkow`
--

CREATE TABLE `rodzaje_posilkow` (
  `ID` int(3) NOT NULL,
  `Rodzaj_posilku` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rodzaje_posilkow`
--

INSERT INTO `rodzaje_posilkow` (`ID`, `Rodzaj_posilku`) VALUES
(1, 'Śniadanie standard'),
(2, 'Śniadanie wegetariańskie'),
(3, 'Śniadanie wegańskie'),
(4, 'Obiad standard'),
(5, 'Obiad wegetariański'),
(6, 'Obiad wegański'),
(7, 'Kolacja standard'),
(8, 'Kolacja wegetariańska'),
(9, 'Kolacja wegańska');

-- --------------------------------------------------------

--
-- Table structure for table `sniadania`
--

CREATE TABLE `sniadania` (
  `Id_posilku` int(3) NOT NULL,
  `Nazwa` text NOT NULL,
  `Obraz` text NOT NULL,
  `Czas_przygotowania` text NOT NULL,
  `Skladniki` text NOT NULL,
  `Sposob_przygotowania` text NOT NULL,
  `Tagi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sniadania`
--

INSERT INTO `sniadania` (`Id_posilku`, `Nazwa`, `Obraz`, `Czas_przygotowania`, `Skladniki`, `Sposob_przygotowania`, `Tagi`) VALUES
(1, 'Jajka zapiekane z szynką i serem', '', 'do 15 minut', '6 dużych jaj\r\n80 g ulubionej szynki\r\n80 g sera żółtego\r\n1 mała cebula\r\n3 ząbki czosnki\r\n1 łyżeczka musztardy Dijon\r\n2 łyżki oliwy z oliwek\r\n', '1. Szynkę pokrój w drobne paseczki, żółty ser zetrzyj na tarce. Cebulę pokrój w kostkę, czosnek przeciśnij przez prasę. Szczypiorek i zieloną pietruszkę posiekaj.\r\n2. Jajka wbij do miski, dopraw solą i pieprzem. Roztrzep je trzepaczką, aż powstania puszysta masa. Rozgrzej patelnię, wylej łyżkę oliwy z oliwek, dodaj cebulę i czosnek, przyrumień je, a następnie podsmaż szynkę. Odstaw patelnię, aby składniki przestygły.\r\n3. Do masy jajecznej dodaj przestudzoną szynkę, cebulę i czosnek, posiekany szczypiorek i pietruszkę, łyżeczkę musztardy, oraz starty ser. Piekarnik rozgrzej do 180 stopni. Naczynie żaroodporne, np. do tart, wysmaruj oliwą z oliwek. Wylej masę. Piecz przez ok. 10 minut. Jajka powinny być ścięte.\r\n', 'Warzywa \r\nNabiał \r\nMięso \r\nPrzyprawy \r\nSzynka \r\nJaja\r\n'),
(1, 'Zapiekanki śniadaniowe\r\n', '', 'do 30 minut', '6 kromek chleba tostowego\r\n25 g sera tartego cheddar\r\n100 g pomidora\r\n6 jajek w rozmiarze L lub XL\r\n¼ łyżeczki soli\r\n¼ łyżeczki czarnego pieprzu\r\n2 plasterki boczku wędzonego\r\n', '1. Każdą kromkę chleba tostowego bardzo cienko posmaruj masłem. Odetnij brzegi i delikatnie rozwałkuj je wałkiem, aż będą bardzo cienkie. Przekrój je na pół, po przekątnej.\r\n2. Weź formę do muffinek. Do każdego otworu wkładaj po dwie połówki, rozciętymi brzegami do góry, by całkowicie zakryły dno. Rogi będą wystawać.\r\n3. Piekarnik nastaw na 190 st. Celsjusza. Chleb wstaw do piekarnika na 5 minut i wyjmij.\r\n4. Pomidora bardzo drobno posiekaj i odsącz go z nadmiaru wody, ściskając.\r\n5. Do każdego otworu wsyp równomiernie po 2 łyżeczki tartego sera, a następnie równomiernie rozłóż posiekanego pomidora. Wbij po jednym jajku na foremkę i posyp je solą oraz pieprzem.\r\n6. Boczek drobno posiekaj. Posyp nim wierzch zapiekanek śniadaniowych.\r\n7. Wstaw całość ponownie do piekarnika na 18-20 minut do momentu ścięcia białek. Kontroluj czas pieczenia aż żółtka będą miały pożądany dla ciebie stopień upieczenia.\r\n8. Wyjmij formę i pozostaw do lekkiego przestudzenia na 5 minut. Wyjmij muffinki i serwuj je od razu, na ciepło, posypane siekanym szczypiorkiem.\r\n', 'Warzywa\r\nNabiał\r\nMięso\r\nPrzyprawy\r\nKanapki\r\nZapiekanki\r\nChleby\r\nJajka\r\n'),
(1, 'Grzanki z grillowanymi bocznikami i jajecznicą serową\r\n', '', 'do 15 minut', 'Grzanki:\r\n2 grubsze kromki z okrągłego chleba\r\n2 łyżki oliwy z oliwek\r\n\r\nJajecznica:\r\n3 wiejskie jajka rozmiar L\r\n2 łyżeczki masła 82%\r\n2 łyżki śmietany 30%\r\n1 łyżka startego sera grana padano\r\nszczypta soli\r\n\r\nGrillowane boczniaki:\r\n150 g boczniaków\r\n2 łyżki sosu sojowego\r\n1 łyżka oliwy z oliwek\r\nświeżo zmielony czarny pieprz (do smaku)\r\n\r\nDodatkowo:\r\n2 plastry szynki szwarcwaldzkiej\r\n1 łyżka posiekanego szczypiorku\r\n1 łyżka startego grana padano\r\nświeżo zmielony czarny pieprz\r\n', '1. Boczniaki porwać na mniejsze kawałki, zamarynować w oliwie i sosie sojowym. Oprószyć pieprzem. \r\nKromki chleba posmarować oliwą za pomocą pędzelka. Patelnię grillową lub grilla elektrycznego mocno rozgrzać. Kromki grillować z obu stron na złoty kolor. Przełożyć na deskę. Na patelnię grillową wrzucić plastry szynki. Grillować z obu stron, aż szynka zrobi się chrupiąca. Przełożyć na deskę. Na patelnię wrzucić boczniaki i grillować na mocnym gazie kilka minut, aż zmiękną i nabiorą ciemnobrązowego koloru.\"\r\n2. Na mniejszej patelni rozpuścić masło. Jajka wpić do miski, dodać śmietanę, ser i odrobinę soli. Rozkłócić widelcem. Wlać na patelnię i smażyć na bardzo małym ogniu, cały czas mieszając. Nie doprowadzić do za szybkiego ścięcia się jajecznicy. Jeśli jajecznica za bardzo się ścina, zdjąć z ognia i mieszać energicznie. Na grzanki ułożyć jajecznicę, dodać pokruszone kawałki szynki i boczniaki. Posypać świeżo zmielony pieprzem, szczypiorkiem i grana padano. Podawać od razu po przygotowaniu.\r\n3. Rady: Szynkę można zastąpić plastrami boczku. Nie należy przesadzać z ilością soli w jajecznicy. Ser i szynka oraz sos sojowy w bocznikach wystarczająco doprawią całość. Jajecznicę najlepiej mieszać na patelni małą trzepaczką. Dzięki temu dobrze się napowietrzy i będzie miała bardziej puszystą konsystencję. Śmietanę w jajecznicy można zastąpić pełnotłustym mlekiem lub 1/2 łyżki serka mascarpone.\r\n', 'Grill\r\nWarzywa\r\nNabiał\r\nMięso\r\nGrzyby\r\nPrzyprawy\r\nKanapki\r\nJaja\r\n'),
(2, 'Rolada omletowa z pomidorami\r\n', '', 'do 15 minut', 'jajko w rozmiarze L\r\nłyżka wody\r\nolej rzepakowy\r\nduży pomidor\r\nświeża kolendra\r\nsól (do smaku)\r\n', '1. Pomidora sparz, obierz ze skórki i usuń twarde elementy. Miąższ pokrój na drobną kostkę.\r\n2. Jajko wbij do miski. Dodaj łyżkę wody i rozbełtaj razem.\r\n3. Na patelni rozgrzej olej. Masę jajeczną rozprowadź tak, jakbyś robił naleśnika. Smaż na mniejszym ogniu, aż omlet się zetnie (bez przewracania; jeśli chcesz mieć pewność, że się dobrze zetnie - możesz przykryć patelnię pokrywką).\r\n4. Usmażony omlet przełóż delikatnie na deskę. Do środka włóż salsę pomidorową, lekko posól do smaku i posyp poszatkowaną kolendrą (ok. łyżki wystarczy). Następnie ostrożnie zwiń w roladę.\r\n5. Rolada omletowa z pomidorami smakuje świetnie na ciepło lub na zimno. Możesz przechować w lodówce na kolejny dzień.\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nPrzyprawy\r\nJaja\r\n'),
(2, 'Babeczki śniadaniowe\r\n', '', 'do 20 minut', '12 jaj\r\n60 g szpinaku baby\r\n1 czerwona papryka\r\nok 70 g pora\r\n200 g tartego sera żółtego (może być cheddar lub ementaler)\r\nsól i pieprz do smaku\r\n1 łyżeczka ulubionych, suszonych ziół\r\n', '1. Nagrzej piekarnik do 180°C i przygotuj formę do pieczenia muffinków. Natłuść ją mocno masłem lub spryskaj obficie olejem. Gdy użyjesz silikonowej formy, łatwiej wyjmiesz babeczki po upieczeniu.\r\n2. Umyj paprykę i pozbaw gniazd nasiennych, przygotuj pora. Pokrój warzywa w drobną kostkę. Aby nabrały większego aromatu, możesz je chwilę przesmażyć na patelni z łyżką masła. Umyj i osusz szpinak. Przygotowane warzywa umieść równomiernie w foremkach tak, aby sięgały mniej więcej 2/3 wysokości.\r\n3. Wbij jajka do dużej miski, dopraw solą i pieprzem, po czym ubij mikserem. Zalej masą jajeczną warzywa (tak, by płyn sięgał do ¾ wysokości) i posyp babeczki startym serem.\r\n4. Piecz muffinki przez około 20 minut lub do momentu suchego patyczka. Wyjmij babeczki z pieca i podawaj ciepłe. Wystudzone wypieki przechowuj w lodówce albo zamroź (nie stracą na smaku i strukturze po rozmrożeniu).\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nPrzyprawy\r\nBabeczki\r\nZapiekanki\r\nJaja\r\n'),
(2, 'Meksykańska szakszuka\r\n', '', 'do 20 minut', 'pomidory w puszce\r\n4 jajka\r\npół puszki kukurydzy konserwewej\r\npół puszki czerwonej fasolki konserwowej\r\n3 ząbki czosnku\r\nkilka dużych pieczarek\r\npół małej papryczki jalapeño\r\nsól, pieprz, mielona kolendra\r\n', '\"1. Boczniaki porwać na mniejsze kawałki, zamarynować w oliwie i sosie sojowym. Oprószyć pieprzem. \r\nKromki chleba posmarować oliwą za pomocą pędzelka. Patelnię grillową lub grilla elektrycznego mocno rozgrzać. Kromki grillować z obu stron na złoty kolor. Przełożyć na deskę. Na patelnię grillową wrzucić plastry szynki. Grillować z obu stron, aż szynka zrobi się chrupiąca. Przełożyć na deskę. Na patelnię wrzucić boczniaki i grillować na mocnym gazie kilka minut, aż zmiękną i nabiorą ciemnobrązowego koloru.\"\r\n2. Na mniejszej patelni rozpuścić masło. Jajka wpić do miski, dodać śmietanę, ser i odrobinę soli. Rozkłócić widelcem. Wlać na patelnię i smażyć na bardzo małym ogniu, cały czas mieszając. Nie doprowadzić do za szybkiego ścięcia się jajecznicy. Jeśli jajecznica za bardzo się ścina, zdjąć z ognia i mieszać energicznie. Na grzanki ułożyć jajecznicę, dodać pokruszone kawałki szynki i boczniaki. Posypać świeżo zmielony pieprzem, szczypiorkiem i grana padano. Podawać od razu po przygotowaniu.\r\n3. Rady: Szynkę można zastąpić plastrami boczku. Nie należy przesadzać z ilością soli w jajecznicy. Ser i szynka oraz sos sojowy w bocznikach wystarczająco doprawią całość. Jajecznicę najlepiej mieszać na patelni małą trzepaczką. Dzięki temu dobrze się napowietrzy i będzie miała bardziej puszystą konsystencję. Śmietanę w jajecznicy można zastąpić pełnotłustym mlekiem lub 1/2 łyżki serka mascarpone.\r\n', 'Wegetariańskie\r\nWarzywa\r\nNabiał\r\nGrzyby\r\nPrzyprawy\r\nShakshuka\r\nJaja\r\n'),
(3, 'Budyń chia na śniadanie\r\n', '', 'do 30 minut', '250 ml dowolnego napoju roślinnego\r\n40 g nasion chia\r\n2 łyżki syropu klonowego\r\n2 łyżki kakao\r\n\r\nDodatkowo:\r\ngarść migdałów\r\ngarść borówek\r\n', '1. Do dużej miski mleko i syrop klonowy. Dodaj kakao oraz nasiona chia. Wszystko razem dokładnie wymieszaj.\r\n2. Odstaw na 15 minut. Po upływie czasu ponownie zamieszaj i przełóż do słoiczków. Wstaw do lodówki na minimum 4 godziny, a najlepiej na całą noc.\r\n3. Serwuj podane z posiekanymi migdałami i borówkami.\r\n', 'Wegańskie\r\nOwoce\r\nBezLaktozy\r\n'),
(3, 'Mango bowl z nasionami chia\r\n', '', 'do 15 minut', 'Pudding:\r\n400g mrożonego mango\r\npuszka mleka kokosowego\r\nbanan\r\n150g nasion chia\r\n\r\nDodatki:\r\nwiórki kokosowe\r\nulubione bakalie\r\nbanan pokrojony w plasterki\r\nświeże maliony\r\n', '1. W rondelku podgrzewamy mleko kokosowe wraz z mango. Po zagotowaniu gotujemy przez minutę.\r\nDodajemy banana i blendujemy. Do uzyskanej masy dodajemy nasiona chia i odstawiamy pudding do momentu aż nasiona napęcznieją.\"\r\n2. Na wierzch gotowego puddingu wykładamy ulubione owoce i bakalie. Posypujemy wiórkami kokosowymi.\r\n', 'Wegańskie\r\nOwoce\r\nBowl\r\nOrzechy\r\n'),
(3, 'Kanapki obniżające cholesterol\r\n', '', 'do 10 minut', 'chleb razowy\r\n150 g ugotowanych brokułów\r\nświeże awokado\r\nsok z cytryny\r\ndwa sprasowane ząbki czosnku\r\noliwa\r\nulubione kiełki\r\npuszka ciecierzycy\r\nsól\r\npieprz\r\npapryka słodka w proszku\r\n', '1. Odsączoną z zalewy ciecierzycę płuczemy na sitku. Doprawiamy solą, pieprzem i słodką papryką. Polewamy oliwą i pieczemy na blasze wyłożonej papierem do pieczenia przez 20-25 minut w 180 stopniach.\r\n2. Brokuły, obrane awokado i przeciśnięty przez praskę czosnek dusimy widelcem na pastę. Dodajemy odrobinę oliwy, sól oraz sok z cytryny.\r\n3. Przygotowane smarowidło nakładamy na chleb razowy. Na wierzch wykładamy porcję kiełków i pieczonej ciecierzycy.\r\n', 'Wegańskie\r\nWarzywa\r\nKiełki\r\nKanapki\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kolacje`
--
ALTER TABLE `kolacje`
  ADD KEY `Id_posilku` (`Id_posilku`);

--
-- Indexes for table `obiady`
--
ALTER TABLE `obiady`
  ADD KEY `Id_posilku` (`Id_posilku`);

--
-- Indexes for table `rodzaje_posilkow`
--
ALTER TABLE `rodzaje_posilkow`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sniadania`
--
ALTER TABLE `sniadania`
  ADD KEY `Id_posilku` (`Id_posilku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rodzaje_posilkow`
--
ALTER TABLE `rodzaje_posilkow`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sniadania`
--
ALTER TABLE `sniadania`
  ADD CONSTRAINT `sniadania_ibfk_1` FOREIGN KEY (`Id_posilku`) REFERENCES `rodzaje_posilkow` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
