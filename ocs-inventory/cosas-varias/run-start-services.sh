#el apache2 se queda detenido despues del reinicio, se requiere que se ejecute este script al iniciar el sistema.

#arranca las maquinas virtuales de mariadb y ocs-inventory
docker start db_ocs
docker start ocsinventoryqatro

#entra al contenedor de ocs para arrancar el servicio de apache
docker exec -it ocsinventoryqatro service apache2 start
