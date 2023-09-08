--@Autor:           Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación:  21-01-2023
--@Descripción:     Configuracion del modo compartido.

whenever sqlerror exit rollback;

prompt Conectando con sys
connect sys/system2 as sysdba


prompt Configurando la instancia para habilitar el modo compartido.

--configura 2 dispatchers para protocolo TCP
alter system set dispatchers='(dispatchers=30)(protocol=tcp)' scope=memory;
--configura 4 shared servers
alter system set shared_servers=300 scope=memory;

show parameter dispatchers
show parameter shared_servers

prompt Actualizando listener.
-- registrar nuevamente los servicios con el listener
alter system register;
-- mostrando los servicios registrados
!lsnrctl services

disconnect