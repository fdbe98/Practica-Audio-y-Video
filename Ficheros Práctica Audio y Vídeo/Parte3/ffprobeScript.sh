#!/bin/bash
#Ejercicio:
#Haz un script en bash que mediante 'ffprobe' muestre información de todos los ficheros de un directorio que sean de tipo audio o vídeo.

for f in *
do

if [[ $(file --mime-type -b $f) == audio/* ]] || [[ $(file --mime-type -b $f) == video/* ]]
then
echo $f
ffprobe $f
echo

fi

done
