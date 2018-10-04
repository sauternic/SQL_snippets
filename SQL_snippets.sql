- Befehle sind case-insensitive!
- Jeder Befehl mit ';' abschliessen!!!

//////////////////////////////////////////////////////////////////////////////////////////////////

Datenbank erzeugen:
==================

CREATE DATABASE foo;



Tabellen erzeugen:
=================

CREATE TABLE kontakte(tel text not null,name text not null,vorname text not null);
                      ===               ====               =======

////////////////////////////////////////////////////////////////////////////////////////////////////


Datenbanken Anzeigen:
====================

SHOW databases;



Datenbank wechseln:
==================

USE foo;


/////////////////////////////////////////////////////////////////////////////////////////////////////


				  
Einügen:
========

INSERT [INTO] kontakte(tel, name, vorname) VALUES ('079', 'sauter', 'nicolas');
                                         ======					  
					  

					  
Abfragen:
========

SELECT * FROM kontakte;
					  
					  					  

										  
Ändern:
======

UPDATE kontakte SET tel='079 505' WHERE vorname='nicolas';



Löschen:
=======

DELETE FROM kontakte WHERE vorname="nicolas";
       ====(nur hier nötig!)

					  

					  
*******************************************************************************************					  
					  
	
	



&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


Platzhalterzeichen bei LIKE
===========================
 
%  beliebig lange (auch leere) Zeichenkette.
_  ein einzelnes Zeichen das auch fehlen kann.

Bsp: SELECT * FROM kontakte WHERE vorname LIKE 'n%';


