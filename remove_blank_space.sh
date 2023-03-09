out="output.$$"
echo -n "Emter a file name : "
read file
 
if [ ! -f $file ]
then
	echo "$file not a file!"
	exit 1
fi
 
sed -e 's/[\t ]//g;/^$/d' $file > $out
echo "Output written to $out file"
