e-market
========
###### Realizado por Núñez Quintana Luis Axel y Vargas Pacheco Bryan

En este proyecto, se realiza la creación y configuración de una **base de datos relacional oracle** a partir de un caso de estudio. Es posible visualizar el siguiente [archivo pdf](https://github.com/LuisAxel/e-market/blob/main/Descripción%20de%20solución.pdf) para conocer la estructura del proyecto y actividades realizadas.

Se estudia lo siguiente:
1. Abstracción de [reglas de negocio](https://github.com/LuisAxel/e-market/blob/main/Requerimientos/Caso%20de%20estudio.pdf).
2. Elaboración de un [modelo Entidad-Relación](https://github.com/LuisAxel/e-market/blob/main/Modelos/e-market%20ER.pdf) con la *notación de Chen*.
3. Elaboración de un [modelo relacional](https://github.com/LuisAxel/e-market/blob/main/Modelos/e-market%20R.jpg) en [ERSTUDIO](https://github.com/LuisAxel/e-market/blob/main/Modelos/e-market.DM1).
4. Elaboración de una base de datos relacional.
    + [Creación de loop devices](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-01-crea-loop-devices-root.sh) para generar la estructura de carpetas necesarias para la base de datos.
    + [Creación de archivo de passwords](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-02-crea-pwdfile-oracle.sh) para especificar a los usuarios sys, system y sysbackup.
    + [Creación de pfile](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-03-crea-pfile-oracle.sh) con los parámetros iniciales de la base a crear.
    + [Creación de spfile](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-04-crea-spfile-ordinario.sql) a partir del pfile.
    + [Creación de directorios](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-05-crea-directorios-root.sh) para la creación de la base de datos.
    + [Creación de la base de datos](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-06-crea-bd-ordinario.sql).
    + [Creación del diccionario de datos](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-07-crea-diccionario-datos-ordinario.sql).
    + [Habilitación del modo archive](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-08-activa-modo-archive.sql.txt).
    + [Configuración del modo compartido](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-09-configura-modo-compartido.sql) para permitir 300 shared servers y 30 dispatchers.
    + [Configuración](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-10-conn-pool.sql) y [reinicio de configuración](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-11-reset-pool.sql) del shared pool.
    + [Creación de tablas, índices y restricciones](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-12-tablas%20idx.sql).
    + Creación de tablespaces y datafiles.
    + Creación de estructuras de carpetas simulando los discos correspondientes utilizados por los tablespaces.
    + Creación de usuarios administradores en cada módulo de la base de datos.
    + [Configuración de los grupos de redologs](https://github.com/LuisAxel/e-market/blob/main/Scripts/s-16-configura-redo-logs.sql) para que un elemento de cada grupo se almacene en la Fast Recovery Area (FRA).
    + Configuración de la Fast Recovery Area (FRA).
    + Carga inicial de datos con desactivación y habilitación de datos redo para optimizar.
    + Respaldo inicial.
    + Simulación de proceso de [Instance recovery](https://github.com/LuisAxel/e-market/blob/main/Descripción%20de%20solución.pdf).
    + Simulación de proceso de [complete media recovery](https://github.com/LuisAxel/e-market/blob/main/Descripción%20de%20solución.pdf).