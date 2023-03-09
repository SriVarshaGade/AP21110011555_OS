file=$1
echo -n "Enter a file name : "
read file
 
if [ ! -f $file ]
then
	echo "$file not a file!"
	exit 1
fi
 
echo -n "Enter a Password : "
read password
 
# do encryption using UNIX crypt command
# this command will prompt for a password
crypt $password < $file > $file.cpy
echo  "$file.cpy created as encrypted file"
