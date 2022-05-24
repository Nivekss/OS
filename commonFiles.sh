if ! [ -z $3 ]
then
	echo "THE LIST OF COMMON FILES:"
	comm -12 <(ls ./$1) <(ls ./$2) | grep ".*\.$3$"
else
	echo "THE LIST OF COMMON FILES:"
	comm -12 <(ls ./$1) <(ls ./$2)
fi




