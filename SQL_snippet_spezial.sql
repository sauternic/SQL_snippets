Hinzufügen einer id Spalte(mit automatisch neuen Werten)
==========================


ALTER TABLE adressen ADD id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;




Korrektur der Spalten Position mit FIRST (ohne 'PRIMARY KEY' bleibt aber trotzdem erhalten)
========================================


ALTER TABLE adressen MODIFY id INT NOT NULL AUTO_INCREMENT FIRST;