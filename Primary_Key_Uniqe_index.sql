PRIMARY KEY Erzeugen
====================

ALTER TABLE mitarbeiter ADD PRIMARY KEY(pers_nr); (kann auch aus mehreren Spalten bestehen ...KEY(pers_nr, punkte, usw.))
                              ===             =======


PRIMARY KEY Löschen
===================

ALTER TABLE mitarbeiter DROP PRIMARY KEY;



*******************************************************************************************************************************



UNIQUE Erzeugen
===============

ALTER TABLE mitarbeiter ADD UNIQUE(pers_nr);
                        ===



UNIQUE Löschen
==============

ALTER TABLE mitarbeiter DROP INDEX pers_nr (INDEX und nicht UNIQUE!!!!!!)
                        ==== =====      