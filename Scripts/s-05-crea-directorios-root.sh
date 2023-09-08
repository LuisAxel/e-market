#!/bin/bash
# @Autor Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
# @Fecha 20/01/2023
# @Descripcion Crea los directorios para la creación de la BD

export ORACLE_SID=nuvaproy

# Directorios para Datafiles
cd /u01/app/oracle/oradata
mkdir ${ORACLE_SID^^}
chown oracle:oinstall ${ORACLE_SID^^}
chmod 750 ${ORACLE_SID^^}

# Directorios para Redo Log y Control Files
cd /unam-bda/proyecto-final/d01
mkdir -p app/oracle/oradata/NUVAPROY
chown -R oracle:oinstall app
chmod -R 750 app

cd /unam-bda/proyecto-final/d02
mkdir -p app/oracle/oradata/NUVAPROY
chown -R oracle:oinstall app
chmod -R 750 app

cd /unam-bda/proyecto-final/d03
mkdir -p app/oracle/oradata/NUVAPROY
chown -R oracle:oinstall app
chmod -R 750 app

echo "Mostrando directorio de data files"
ls -l /u01/app/oracle/oradata

echo "Mostrando directorios para control files y Redo Logs"
ls -l /unam-bda/proyecto-final/d0*/app/oracle/oradata

