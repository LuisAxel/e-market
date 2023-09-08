--@Autor: Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación: 20/01/2023
--@Descripción: Crea la base de datos nuvaproy

Prompt conectando como usuario sys
connect sys/hola1234* as sysdba 

Prompt iniciando en modo nomount
startup nomount

Prompt creando la base de datos
whenever sqlerror exit rollback

create database nuvaproy
  user sys identified by system2
  user system identified by system2
  logfile group 1 (
    '/unam-bda/proyecto-final/d01/app/oracle/oradata/NUVAPROY/redo01a.log',
    '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo01b.log',
    '/unam-bda/proyecto-final/d03/app/oracle/oradata/NUVAPROY/redo01c.log') size 50m
blocksize 512,
  group 2 (
    '/unam-bda/proyecto-final/d01/app/oracle/oradata/NUVAPROY/redo02a.log',
    '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo02b.log',
    '/unam-bda/proyecto-final/d03/app/oracle/oradata/NUVAPROY/redo02c.log') size 50m
blocksize 512,
  group 3 (
    '/unam-bda/proyecto-final/d01/app/oracle/oradata/NUVAPROY/redo03a.log',
    '/unam-bda/proyecto-final/d02/app/oracle/oradata/NUVAPROY/redo03b.log',
    '/unam-bda/proyecto-final/d03/app/oracle/oradata/NUVAPROY/redo03c.log') size 50m
blocksize 512
  maxloghistory 1
  maxlogfiles 16
  maxlogmembers 3
  maxdatafiles 1024
  character set AL32UTF8
  national character set AL16UTF16
  extent management local
  datafile '/u01/app/oracle/oradata/NUVAPROY/system01.dbf'
    size 700m reuse autoextend on next 10240k maxsize unlimited
  sysaux datafile '/u01/app/oracle/oradata/NUVAPROY/sysaux01.dbf'
    size 550m reuse autoextend on next 10240k maxsize unlimited
  default tablespace users
  datafile '/u01/app/oracle/oradata/NUVAPROY/users01.dbf'
    size 500m reuse autoextend on maxsize unlimited
  default temporary tablespace tempts1
    tempfile '/u01/app/oracle/oradata/NUVAPROY/temp01.dbf'
    size 20m reuse autoextend on next 640k maxsize unlimited
  undo tablespace undotbs1
    datafile '/u01/app/oracle/oradata/NUVAPROY/undotbs01.dbf'
    size 200m reuse autoextend on next 5120k maxsize unlimited;

alter user sys identified by system2;
alter user system identified by system2;