# Ejercicio 5 (1.10.3 Redes de polinizadoroes de plantas)
#1. Escriba un script que tome uno de estos archivos y determine el número filas (polinizadores) y columnas (plantas).Tenga en cuenta que las columnas están separadas por espacios y que hay un espacio  al final de cada línea.

echo "Filename:../data/Saavedra2013/n1.txt"
echo "Número de filas:"  
cat n1.txt | wc -l 
echo "Número de columnas:" 
head -n 1 n1.txt | tr -d ' ' | tr -d '\n' | wc -c 
echo "Fin script"

# 2. (Avanzado) Escriba un guíon que imprima el número de filas y columnas para cada red

for file in $(ls *.txt) 
do
    miFILA=`cat $file | wc -l`
    miCOLUM=`head -n 1 $file | tr -d ' ' | tr -d '\n' | wc -c`
    echo $file $miFILA $miCOLUM
done
