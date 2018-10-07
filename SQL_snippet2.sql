Datenbank löschen(DROP):
==================

DROP DATABASE foo;



Tabellen leeren(Struktur bleibt erhalten):
==================

TRUNCATE kommentare;



Tabelle löschen
===============

DROP TABLE kommentare;



Tabellen ändern(Spalte vorname):
==================

ALTER TABLE kontakte MODIFY [COLUMN] vorname varchar(80) not null;
                     ALTER   COLUMN( -> SQL Server/MS Acess)



Neue Spalte:
==================

ALTER TABLE kontakte ADD tel int;



Spalte löschen
==============

ALTER TABLE kontakte DROP tel;



