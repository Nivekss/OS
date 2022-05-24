if [ -d $1 ]
then
	echo "Argument is a directory. Content:"
	ls ./$1
	if [ -r $1 ]
	then
		echo "User has read permission on directory"
	fi
	if [ -w $1 ]
	then
		echo "User has write permission on directory"
	fi
	if [ -x $1 ]
	then 
		echo "User has execution permission on directory"
	fi
elif [ -f $1 ] 
then
	echo -n "Argument is a file. Size in bytes: "
	wc -c < $1 
	if [ -r $1 ] 
	then
		echo "User has read permission on file"
	fi
	if [ -w $1 ]
	then 
		echo "User has write permission on file"
	fi
	if [ -x $1 ]
	then
		echo "User has exectuion permission on file"
	fi
else 
	touch $1
	echo $(date) >> $1
fi
