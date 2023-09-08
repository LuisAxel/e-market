#!/bin/bash
# @Autor Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
# @Fecha 20/01/2023
# @Descripcion Crea un archivo de passwords

export ORACLE_SID=nuvaproy

echo 'Creando nuevo archivo de passwords';

orapwd FILE='${ORACLE_HOME}/dbs/orapw${ORACLE_SID}'\
  FORMAT=12.2\
  FORCE=Y\
  SYS=password\
  SYSTEM=password\
  SYSBACKUP=password
echo 'Comprobando correcta creación del archivo de passwords'

ls -l ${ORACLE_HOME}/dbs/orapw${ORACLE_SID}

echo 'Listo';