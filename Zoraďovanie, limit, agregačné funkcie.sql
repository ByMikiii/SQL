#1 Vyberie prezivku, email od uživateľoch a zoradi to podľa prezivky
SELECT prezdivka, email FROM uzivatele ORDER BY prezdivka


#2 Vyberie ID a sučet komentare_id z komentároch a zoradi to podľa ID
SELECT uzivatel_id, COUNT(komentare_id) AS 'pocet_komentarov' FROM komentare GROUP BY uzivatel_id;


#3 Vyberie to priemerne zrychlenie všetkých vozidiel
SELECT AVG(zrychleni) FROM vozidla;


#4 Vyberie max. hodnotu z penazi, max. hodnotu zlatakov, min. peniaze, min. zlataky z tabulky vyhry
SELECT max(penize) AS 'max_penez', max(zlataky) AS 'max_zlataku', min(penize) AS 'min_penez', min(zlataky) AS 'min_zlataku' FROM vyhry;


#5(nefunguje)
SELECT obchod_id, vozidlo_id , sleva_min, aktualni_sleva, dostupne FROM obchody ORDER BY aktualni_sleva DESC;


#6 Vyberie počet nazvov ktoré obsahujú 'yellow' alebo 'žlutá'
SELECT COUNT(title) AS 'pocet_zlutych_produktu' FROM item WHERE title LIKE '%yellow%' OR title LIKE '%žlutá%';


#7 Vyberie ID, sučet všetkých položky z tabulky item_inovice a zoradi ich podľa ID položky
SELECT invoice_id, count(*) FROM item_invoice GROUP BY invoice_id;


#8 Vyberie súčet všetkých zakaznikov, kod banky z tabulky bank_account zoskupi ich podľa kodu banky a zoradi ich podľa počtu zakaznikov zostupne
SELECT COUNT(*) AS 'pocet_zakaznikov', bank_code FROM bank_account GROUP BY bank_code ORDER BY pocet_zakaznikov DESC;
