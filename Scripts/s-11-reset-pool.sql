--@Autor:           Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación:  14 de enero de 2023
--@Descripción:     RESET del Pool de conexiones.

whenever sqlerror exit rollback;

prompt Conectando con sys
connect sys/system2 as sysdba

exec dbms_connection_pool.stop_pool();
exec dbms_connection_pool.restore_defaults();

prompt Listo!
