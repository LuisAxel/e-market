--@Autor:           Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación:  20 de enero de 2023
--@Descripción:     Pool de conexiones

whenever sqlerror exit rollback;

prompt Conectando con sys
connect sys/system2 as sysdba

exec dbms_connection_pool.start_pool();

exec dbms_connection_pool.alter_param ('','MAXSIZE','50');
exec dbms_connection_pool.alter_param ('','MINSIZE','33');

exec dbms_connection_pool.alter_param ('','INACTIVITY_TIMEOUT','1800');
exec dbms_connection_pool.alter_param ('','MAX_THINK_TIME','1800');


prompt Listo!

disconnect
