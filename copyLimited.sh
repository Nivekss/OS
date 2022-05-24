sub=$1
int=$2
if ! [ -d $1 ] 
then 
	mkdir $1
fi
for i in ./*.txt
do
	touch ./$sub/$i
	if [ $( wc -l < $i) -gt $int ]
	then
		head -$int ./$i > ./$sub/$i
	else
		head -$( wc -l < $i)  ./$i > ./$sub/$i	
	fi
done

