n1=$1
n2=$2
while [ $n2 -ne 0 ]
do
	rem=$(( $n1 % $n2 ))
	n1=$n2
	n2=$rem
done
echo "Gcd($1,$2)=$n1"

