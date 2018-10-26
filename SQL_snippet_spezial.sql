Hinzufügen einer id Spalte(mit automatisch neuen Werten)
==========================


ALTER TABLE adressen ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;




Korrektur der Spalten Position mit FIRST (ohne 'PRIMARY KEY' bleibt aber trotzdem erhalten)
========================================


ALTER TABLE adressen MODIFY id INT NOT NULL AUTO_INCREMENT FIRST;





Textdatei in Datenbank laden
============================
(Tab getrennt, zeilenende '\r\n')
(Direkt von einer Excel Tab. Kopiert und ins Textfile kopiert)

LOAD DATA LOCAL INFILE
'C:/Users/Sauter/Documents/rbl.txt'
INTO TABLE mitarbeiter