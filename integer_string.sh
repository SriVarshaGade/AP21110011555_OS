read -p "Type a number or a string: " input

if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
     echo "Input is an integer."

elif [[ $input =~ ^[+-]?[0-9]+\.?[0-9]+\.$ ]]; then
     echo "Input is a string."

elif [[ $input =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];then
     echo "Input is a float"

else
     echo "Input is a string."

fi
