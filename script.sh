#!/bin/sh

# El siguiente script fue utilizado para obtener todos los jsons desde la pagina del INE
# No es optimizado y se pudo haber hacho mejor, de igual manera cumple su porposito.

STATE=$1
mkdir $STATE
for i in $(seq 1 999); do
    echo http://inegifacil.com/codes/$STATE/$i/
    wget http://inegifacil.com/codes/$STATE/$i/ -O $STATE/$i.json
    #mv $i $i.json
    echo "copiado $i";
done
