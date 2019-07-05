<h1>exercice sur les requettes mysql<h1>

1 afficher la liste des pays ou simplon est présent?

mysql> select *from pays let join fabrique on id_pays = fabrique.id_pays;
+----+---------+--------+----+----------------+----------------+-----------+-------------------------+---------+
| id | nom     | ville  | id | nom            | adresse        | tel       | email                   | id_pays |
+----+---------+--------+----+----------------+----------------+-----------+-------------------------+---------+
|  1 | SENEGAL | Dakar  |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |
|  2 | Mali    | Bamako |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |
|  3 | Gambie  | Banjul |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |
|  4 | France  | Paris  |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |
|  5 | Espagne | Madrid |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |
|  6 | Chine   | Pékin  |  1 | simplon dakar  | corniche ouest | 335678909 | simplonauf@gmail.com    |       1 |


2 afficher la liste des fabrique de la ville de Dakar?

 mysql> select nom from fabrique where id_pays=1;
+---------------+
| nom           |
+---------------+
| simplon dakar |
+---------------+


3 afficher la liste des pays qui ont au moins deux fabrique?
 mysql> select *from pays where ville >='2';
+----+---------+--------+
| id | nom     | ville  |
+----+---------+--------+
|  1 | SENEGAL | Dakar  |
|  2 | Mali    | Bamako |
|  3 | Gambie  | Banjul |
|  4 | France  | Paris  |
|  5 | Espagne | Madrid |
|  6 | Chine   | Pékin  |
+----+---------+--------+




4 afficher le nombre d' apprenant par fabrique ?


5 afficher la liste des référentiels par fabrique ?

6  afficher la liste des apprenants qui ont au moins un contrat?

mysql> select *from apprenant left join contrat on id_apprenant = contrat.id_apprenant and type_contrat= 'en poste';
+----+--------+------------+------------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+
| id | nom    | prenom     | statut     | date_naissance | sexe | email                 | tel       | id_referentiel | id_cohorte | id_fabrique | id   | poste | type_contrat | date_debut | date_fin | nom_structure | id_apprenant | situation_professionnelle |
+----+--------+------------+------------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+
|  1 | NIANE  | Amy        | apprenante | 1993-07-05     | 1    | amyniane591@gmail.com | 777660584 |              1 |          3 |           4 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  2 | NDAO   | Mame fatou | apprenante | 1998-12-05     | 1    | mfandao@gmail.com     | 789860584 |              1 |          2 |           1 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  3 | FAYE   | Helene     | apprenante | 1985-04-11     | 1    | fayehelene@gmail.com  | 765429919 |              4 |          3 |           3 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  4 | MARIGO | Mamadou    | apprenante | 1990-08-19     | 0    | madou@gmail.com       | 709876543 |              2 |          4 |           2 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
|  5 | SIDIBE | Mouhamed   | apprenant  | 1995-12-19     | 0    | masidib@gmail.com     | 774809873 |              3 |          5 |           5 | NULL | NULL  | NULL         | NULL       | NULL     | NULL          |         NULL | NULL                      |
+----+--------+------------+------------+----------------+------+-----------------------+-----------+----------------+------------+-------------+------+-------+--------------+------------+----------+---------------+--------------+---------------------------+



7  ajouter une table ouvert de type boolean a cohorte
	alter table cohorte add ouvert boolean;
	Query OK, 
	0 rows affected (1.17 sec)


8* modifier le type du champ sexe en char(1)

mysql> alter table apprenant modify sexe char(1);
Query OK, 
5 rows affected (2.05 sec)
