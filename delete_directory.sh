echo "Enter source directory name:"
read src
echo "Enter destination directory name:"
read dst
src="$1"
dst="$2"
if [ $# -ne 2 ]
then
	echo "$(basename $0) dir1 dir2"
	exit 1
fi
if [ ! -d $src ] 
then
	echo "directory $src does not exist"
	exit 2
fi
if [ ! -d $dst ]
then
	echo "directory $dst does not exist"
	exit 2
fi
for f in $dst/*
do
	if [ -f $f ]
	then
		tfile="$src/$(basename $f)"
		if [ -f $tfile ]
		then
			echo -n "Deleting $tfile..."
			/bin/rm $tfile
			[ $? -eq 0 ] && echo "done"|| echo "failed"
		fi
	fi
done
