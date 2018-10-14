Am Prompt Anmelden
==================


Super User 'root' hat alle Rechte! :)


> mysql -u root -p


Du wirst dann nach einem Kennwort gefragt. 
Hast du kein Kennwort gesetzt, verzichtest du einfach auf den Parameter '-p' 
und du wirst nicht mehr nach einem Kennwort gefragt. 
Nach der Eingabe solltest du den MySQL Prompt sehen.





Rechte einem User für eine Datenbank vergeben
=============================================

(wenn User noch nicht vorhanden wird er angelegt)

> GRANT ALL ON foo.* TO 'nicolas'@'localhost' IDENTIFIED BY '<passwort>';


Rechte einem User für eine Tabelle vergeben
===========================================

> GRANT SELECT ON foo.kontakte TO meier





Passwort am Super-User 'root' geben
===================================

Da die Berechtigungen ja in der Tabelle user von Datenbanke mysql sind,
kann diese direkt geändert werden.(Vorsicht dass man sich nicht selber Ausschliesst*)
Nachher Dienst neu Starten um die neuen Berechtigungen einlesen zu lassen.
 
> update user set password = password('<passwort>') where user = 'root';

  ->phpMyAdmin wird dann die Verbindung verlieren.
  ->einfach in 'C:\xampp\phpMyAdmin\config.inc.php' das neue Passwort angeben.
 
 *Zuerst empfiehlt sich eine Sicherungskopie vom mysql-Ordner mit den funktionierenden Berechtigungen!)
 
 
 
 