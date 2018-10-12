Tabellen Eigenschaften Anzeigen
===============================

DESC kommentare;



Datenbank löschen(DROP)
=================

DROP DATABASE foo;



Tabellen leeren(Struktur bleibt erhalten)
===============

TRUNCATE kommentare;



Tabelle löschen
===============

DROP TABLE kommentare;



Tabellen ändern(Spalte vorname):
===============

ALTER TABLE kontakte MODIFY [COLUMN] vorname varchar(80) not null [FIRST|AFTER column_name];
                     ALTER   COLUMN( -> SQL Server/MS Acess)

oder:


ALTER TABLE kontakte CHANGE [COLUMN] vorname vorname varchar(80) not null [FIRST|AFTER column_name];					 
	

	

Neue Spalte
===========

ALTER TABLE kontakte ADD tel int [FIRST|AFTER column_name];



Spalte löschen
==============

ALTER TABLE kontakte DROP tel;



