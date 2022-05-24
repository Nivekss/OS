echo -n "enter file name: " 
read file
date=$(date '+%Y-%m-%d')
extension="${file##*.}"
filename="${file%.*}"
newfile="$filename$date.$extension"
if [[ $(find $file -type f -size +1048576c) ]]
then
	touch $newfile
	cp $file $newfile
	> $file
	echo "operation complete"
else 
	exit 1
fi



	


