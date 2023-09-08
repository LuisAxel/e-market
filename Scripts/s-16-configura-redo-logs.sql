--@Autor:           Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación:  21 de enero de 2023
--@Descripción:     Configuración redologs para la FRA

whenever sqlerror exit rollback;

prompt Conectando con sys
connect sys/system2 as sysdba
 prompt Confirmando los grupos
select group#,sequence#,bytes, bytes/(1024*1024) size_mb, blocksize,
members,archived,status
from v$log;
prompt Eliminando los grupos pasados
alter database drop logfile group 1;

alter database
add logfile
group 1 size 100m blocksize 512 reuse;

alter database drop logfile group 2;
alter database drop logfile group 3;

prompt Agregando nuevos grupos

alter database
add logfile
group 2 size 100m blocksize 512 reuse;

alter database
add logfile
group 3 size 100m blocksize 512 reuse;


prompt Agregando nuevos miembros a cada grupos

alter database
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo01b.log' to group 1;
alter database
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo01c.log' to group 1;

alter database
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo02b.log' to group 2;
alter database
add logfile member '/unam-bda/proyecto-final/d03/app/oracle/oradata/NUVAPROY/redo02c.log' to group 2;

alter database
add logfile member '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo03b.log' to group 3;
alter database
add logfile member '/unam-bda/proyecto-final/d03/app/oracle/oradata/NUVAPROY/redo03c.log' to group 3;

prompt archivos redo creados