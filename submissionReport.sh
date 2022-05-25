if [ -z $1 ]
then
	nr=5
else 
	nr=$1
fi
for id in */ 
do 
	cnt=$( ls -1 ./$id | wc -l )
	if [ $cnt -gt $nr ]
	then
		cnt=$nr
	fi
	echo -n "Student ${id%/} has suibmitted $cnt solution(s): "
	ls ./$id | egrep -o [0-9]+ | tr "\n" " "
	echo ""	
done
