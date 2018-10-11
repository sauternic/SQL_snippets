!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
- Befehle sind case-insensitive!
- Jeder Befehl mit ';' abschliessen!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Datenbank erzeugen
==================

CREATE DATABASE foo CHARACTER SET utf8;




Tabellen erzeugen(noch ohne Werte, nur die Spaltenüberschriften)
=================

CREATE TABLE kontakte1(tel TEXT NOT NULL, name TEXT NOT NULL, vorname TEXT NOT NULL);
                       ===                ====                =======
					  

Etwas komplizierter:

Mit:
- AUTO_INCREMENT
- DEFAULT CURRENT_TIMESTAMP				  

CREATE TABLE kontakte2(id INT NOT NULL AUTO_INCREMENT, einträge TEXT NOT NULL, zeit TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (id));
                       ==                              ========                ====                                                ===========


					  
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




Datenbanken Anzeigen
====================

SHOW DATABASES;
SHOW TABLES;


Datenbank wechseln
==================

USE foo;


/////////////////////////////////////////////////////////////////////////////////////////////////////


				  
Einügen
=======

INSERT [INTO] kontakte(tel, name, vorname) VALUES ('079', 'sauter', 'nicolas');
                                           ======					  
oder mehrer gleichzeitig:
INSERT [INTO] kontakte(name, vorname) VALUES ('Sauter','Nicolas'), ('Kundert','Reto'), ('Sauter','Patricia');	
                                              ==================  (...) entspricht einem Eintrag(eine Zeile)				  

					  
Abfragen
========

SELECT * FROM kontakte;
					  
					  					  

										  
Ändern
======

UPDATE kontakte SET tel='079 505' WHERE vorname='nicolas';



Löschen
=======

DELETE FROM kontakte WHERE vorname="nicolas";
       ====(nur hier nötig!)

					


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


Platzhalterzeichen bei LIKE
===========================
 
%  beliebig lange (auch leere) Zeichenkette.
_  ein einzelnes Zeichen das auch fehlen kann.

Bsp: SELECT * FROM kontakte WHERE vorname LIKE 'n%';


&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&



