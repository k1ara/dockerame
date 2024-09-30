INSTALACION DE MARIADB DOCKER

docker search mariadb

docker pull mariadb:10.4

docker images

docker run --name mariadb -e MYSQL_ROOT_PASSWORD=mypass -p 3306:3306 -d docker.io/library/mariadb:10.3






CAMBIAR TIMEZONE DENTRO DE TABLA #evita que el registro del ocs tenga mal los tiempos, ya que no ve la de sistema.

MariaDB [(none)]> show variables like '%time_zone%';
SET GLOBAL time_zone = 'America/New_York';