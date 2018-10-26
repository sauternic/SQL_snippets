Beispiele mit GROUP UND HAVING
==============================

SELECT r.gruppe AS 'Gruppe', 
       count(*) AS 'Anzahl',                  (ev. mit Backticks Arbeiten '`')
       group_concat(r.name) AS 'Alle Namen'

FROM rbl_mitarbeiter r

GROUP by r.gruppe

HAVING Anzahl > 0                             (ev. mit Backticks Arbeiten '`')

ORDER by r.gruppe


Tutorial:
https://www.youtube.com/watch?v=x69oqId263g&t=618s