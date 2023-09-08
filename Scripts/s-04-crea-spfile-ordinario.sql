--@Autor: Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
--@Fecha creación: 20/01/2023
--@Descripción: Crea un spfile a partir de un pfile

Prompt conectando como usuario sys
connect sys/hola1234* as sysdba 

Prompt creando archivo binario
create spfile from pfile='/u01/app/oracle/product/19.3.0/dbhome_1/dbs/initnuvaproy.ora';

Prompt verificando la creación del SPFILE
!ls ${ORACLE_HOME}/dbs/spfilenuvaproy.ora

    
    