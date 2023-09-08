--@Autor: Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación: 20/01/2023
--@Descripción: Crea las tablas y vistas del diccionario de datos

Prompt conectando como usuario sys
connect sys/system2 as sysdba

Prompt ejecutando scripts como usuario sys
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql

Prompt conectando como usuario system
connect system/system2

Prompt ejecutando scripts como usuario system
@?/sqlplus/admin/pupbld.sql

Prompt listo