echo "Enter the number of terms you want to print:"
read n
a=0
b=1
if [ $n -le 0 ]; then
    echo "Please enter a positive integer"
elif [ $n -eq 1 ]; then
    echo "Fibonacci series up to $n terms:"
    echo $a
else
    echo "Fibonacci series upto $n terms:"
    echo $a
    echo $b
    for (( i=2;i<$n;i++ ))
    do
         c=$((a+b))
         echo $c
         a=$b
         b=$c
    done
fi            
