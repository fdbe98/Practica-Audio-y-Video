#!/bin/bash
#Haz un script en bash que lea todos los ficheros de audio de un directorio y los convierta a formato Vorbis

for f in *
do
if [[ $(file --mime-type -b $f) == audio/* ]]
then
echo $f
ffmpeg -i "$f" "$f.ogg"
fi
done


