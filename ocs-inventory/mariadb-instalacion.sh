INSTALACION DE MARIADB DOCKER

docker search mariadb

docker pull mariadb:10.4

docker images

docker run --name mariadb --network [mi-red] -e MYSQL_ROOT_PASSWORD=mypass -p 3306:3306 -d docker.io/library/mariadb:10.4

#conectar a la misma red que las maquinas que usaran la base de datos
docker network ls
docker network connect [mi-red] mariadb

docker exec -it mariadb -u root -p

CREATE USER 'ocs'@'%' IDENTIFIED BY 'ocs24cfe';  #El símbolo % permite que este usuario se conecte desde cualquier dirección IP.

GRANT ALL PRIVILEGES ON ocsweb.* TO 'ocs'@'%';  #se otorgan permisos para la base de datos especificada

FLUSH PRIVILEGES;  #se aplican los privilegios








CAMBIAR TIMEZONE DENTRO DE TABLA #evita que el registro del ocs tenga mal los tiempos, ya que no ve la de sistema.

MariaDB [(none)]> show variables like '%time_zone%';
SET GLOBAL time_zone = 'America/New_York';