#Resuelva el ejercicio 1.10.4 Data Explorer.

#Resuelva el ejercicio en un documento de nombre ejercicio_1104.sh
#Cargue el documento ejercicio_1104.sh en GitHub utilizando git push.
#Realice el video explicativo de la resolución del ejercicio y guarde en YouTube en formato público o unlisted, y pegue el enlace en el cuaderno de Jupyter.

echo "Nombre de la columna"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | head -n 1
echo "Número de los distintos valores"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
echo "Valor mínimo"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
echo "Valor máximo"
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
