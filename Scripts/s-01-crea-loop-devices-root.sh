#!/bin/bash
# @Autor Bryan Vargas Pacheco y Luis Axel Nuñez Quintana
# @Fecha 20/01/2023
# @Descripcion Realiza las configuraciones necesarias para
#              la creación de 3 loop devices.

echo 'Creando directorio /unam-bda/proyecto-final/disk-images'

if ! [ -d "/unam-bda/proyecto-final/disk-images" ]; then
  mkdir /unam-bda/proyecto-final/disk-images
  echo "Se ha creado el directorio /unam-bda/proyecto-final/disk-images"
fi

echo 'Asignando permisos'

chmod 755 /unam-bda/proyecto-final/disk-images

echo 'Cambiandose al directorio creado y creando archivos para loop devices'

cd /unam-bda/proyecto-final/disk-images

dd if=/dev/zero of=disk1.img bs=100M count=10
dd if=/dev/zero of=disk2.img bs=100M count=10
dd if=/dev/zero of=disk3.img bs=100M count=10

echo 'Comprobando la creación de los archivos'

du -sh disk*.img

echo 'Asociando archivos con loop devices'

losetup -fP disk1.img
losetup -fP disk2.img
losetup -fP disk3.img

echo 'Comprobando la creación de los loop devices'

losetup -a

echo 'Modificando formato de los archivos creados'

mkfs.ext4 disk1.img
mkfs.ext4 disk2.img
mkfs.ext4 disk3.img

echo 'Creando los directorios en dónde serán montados'

mkdir /unam-bda/proyecto-final/d01
mkdir /unam-bda/proyecto-final/d02
mkdir /unam-bda/proyecto-final/d03

echo 'Listo'
