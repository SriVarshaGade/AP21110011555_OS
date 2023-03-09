echo "enter the file name:"
read s
if [ ! -f $s ]
then
echo "the file doesn't exist"
else
m=$(stat -c %y $s)
echo "last modification : $m"
fi
