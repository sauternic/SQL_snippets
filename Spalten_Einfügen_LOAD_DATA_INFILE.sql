Hinzufügen einer id Spalte(mit automatisch neuen Werten)
==========================


ALTER TABLE adressen ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;




Korrektur der Spalten Position mit FIRST (ohne 'PRIMARY KEY' bleibt aber trotzdem erhalten)
========================================


ALTER TABLE adressen MODIFY id INT NOT NULL AUTO_INCREMENT FIRST;




*********************************************************************************************************************




Textdatei in Datenbank laden (Achtung in Pfad immer '/' und nicht '\')
============================
(Tab getrennt(default) in mariaDB, zeilenende '\r\n')
(Direkt von einer Excel Tab. Kopiert und ins Textfile kopiert)

LOAD DATA INFILE 'C:/Users/Sauter/Documents/rbl.txt'
INTO TABLE mitarbeiter


Zusätzliche Angaben möglich
===========================
FIELDS TERMINATED BY ','; (Tabulator ist Default)
ENCLOSED BY '"';          (schliesst diese Zeichen aus)
LINES TERMINATED BY '|';  (Ende einer Zeile in Windows '\r\n')

ESCAPED BY '\^';          (^ statt \ als Escape Zeichen)



Ein Beispiel
============

LOAD DATA INFILE 'C:/Users/Sauter/Documents/rbl.txt'

INTO TABLE mitarbeiter
     =====(wird gern Vergessen!)

FIELDS TERMINATED BY '\t'  (Nicht nötig, weil Default)
LINES TERMINATED BY '\r\n' (Wenn das fehlt Warnung: Note: #1265 Daten abgeschnitten für Feld 'punkte' in Zeile 1)

