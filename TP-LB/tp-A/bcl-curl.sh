echo Start > result.txt
for ((i=1; i<=500 ; i++))
do 
    curl 127.0.0.1:83 -s >> result.txt
done
echo "end" >> result.txt
echo "Nombre de Hello 1 :"
cat result.txt | grep "Hello 1"| wc -l
echo "Nombre de Hello 2 :"
cat result.txt | grep "Hello 2"| wc -l