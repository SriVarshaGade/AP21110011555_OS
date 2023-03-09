echo "Enter the size"
read n
sum=0
i=0
while [ $i -lt $n ]
do 
    read num
    sum=$((sum+num))
    i=$((i+1))
done
average=$(echo $sum / $n | bc -l)
echo $average 
