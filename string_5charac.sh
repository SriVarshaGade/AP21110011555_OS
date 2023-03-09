echo "enter the string:"
read string
len= expr length "$string"
echo "$len"
if [[ $len -lt 5 ]]  
then
   echo "less than five characters"
else
   echo "more than five characters"
fi      
