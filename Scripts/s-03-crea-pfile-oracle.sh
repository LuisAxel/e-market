#!/bin/bash
# @Autor Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
# @Fecha 20/01/2023
# @Descripcion Crea un pfile

echo "1. Creando un archivo de parámetros"
export ORACLE_SID=nuvaproy
pfile=$ORACLE_HOME/dbs/init${ORACLE_SID}.ora

if [ -f "${pfile}" ]; then
read -p "El archivo ${pfile} ya existe, [enter] para sobrescribir"
fi;

echo \
"db_name='${ORACLE_SID}'
memory_target=768M
control_files=(
  /unam-bda/proyecto-final/d01/app/oracle/oradata/${ORACLE_SID^^}/control01.ctl,
  /unam-bda/proyecto-final/d02/app/oracle/oradata/${ORACLE_SID^^}/control02.ctl,
  /unam-bda/proyecto-final/d03/app/oracle/oradata/${ORACLE_SID^^}/control03.ctl
)" >$pfile

echo "Listo"
echo "Comprobando la existencia y contenido del PFILE"
echo ""
cat ${pfile}