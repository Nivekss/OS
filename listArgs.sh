files=""
directories=""
for var in "$@"
do 
	if [ -f $var ]
	then
		files="$files$var "
	elif [ -d $var ]
	then
		directories="$directories$var "
	fi
done
echo "The list of file: $files"
echo "The list of directories: $directories"

