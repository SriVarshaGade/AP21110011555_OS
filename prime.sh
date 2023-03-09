echo "Enter a number:"
read n
if [ $n -lt 2 ]; then
   echo "$n is not a prime number"
else
   i=2
   is_prime=true
   while [ $t -le $((n/2)) ]
   do
      if [ $((n%2)) -eq 0 ]; then
         is_prime=false
         break
      fi
      l=$((i+1))
   done
   if $is_prime: then
      echo "$n is a prime number"
   else
      echo "$n is not a prime number"
   fi
fi                  
