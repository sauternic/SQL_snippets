Für Beispiel unten gilt
=======================

Datenbank heisst: foo
Tabelle heisst:   kontakte



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



Am Prompt Anmelden
==================


Super User 'root' hat alle Rechte! :)


> mysql -u root -p


Du wirst dann nach einem Kennwort gefragt. 
Hast du kein Kennwort gesetzt, verzichtest du einfach auf den Parameter '-p' 
und du wirst nicht mehr nach einem Kennwort gefragt. 
Nach der Eingabe solltest du den MySQL Prompt sehen.


Wie bin ich gerade angemeldet?
=============================

select current_user()




******************************************************************************************************************



Neuer User Anlegen
==================

CREATE USER nicolas@localhost;



Benutzer löschen
================

DROP USER nicolas'@'localhost;



Rechte einem User für eine 'Datenbank' vergeben
=============================================


> GRANT SELECT ON foo.* TO nicolas'@'localhost [IDENTIFIED BY '<passwort>'];



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Merke:
GRANT <Rechte z.b 'SELECT' oder 'ALL' oder 'SELECT,INSERT...'>
ON <Database>.<Table>
TO user@host
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



Rechte einem User für eine 'Tabelle' vergeben
===========================================

> GRANT SELECT ON foo.kontakte TO nicolas'@'localhost




Rechte einem User für eine 'Spalte' vergeben!!! :)))
==========================================

> GRANT SELECT(id) ON foo.kontakte TO nicolas@localhost
               == 



Rechte von einem Benutzer anzeigen
==================================

SHOW GRANTS FOR nicolas@localhost;



Rechte neu laden(alternative Dienst neu Starten)
================

FLUSH PRIVILEGES;



Ps: Die Rechte sind in den folgenden Tabellen der mysql Datenbank zu finden:

- user           (Globale Rechte)
- db             (Datenbank Rechte)
- tables_priv    (Tabellen Rechte)
- columns_priv   (Spalten Rechte)



*****************************************************************************************************************



Passwort am Super-User 'root' geben
===================================

Da die Berechtigungen ja in der Tabelle user von Datenbanke mysql sind,
kann man diese direkt Ändern.(Vorsicht dass man sich nicht selber Ausschliesst*)
Nachher Dienst neu Starten um die neuen Berechtigungen einlesen zu lassen.(oder FLUSH PRIVILEGES;)
 

 > update user set password = password('<passwort>') where user = 'root';

  ->phpMyAdmin wird dann die Verbindung verlieren.
  ->einfach in 'C:\xampp\phpMyAdmin\config.inc.php' das neue Passwort angeben.
 
 
 *Zuerst empfiehlt sich eine Sicherungskopie vom mysql-Ordner mit den funktionierenden Berechtigungen!)
 
 
 
 