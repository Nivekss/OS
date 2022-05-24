nr=$(( ${RANDOM}%10+1 ))
guess=-1
cnt=0
while [ $guess -ne $nr ]
do 
	echo -n "enter your guess: "; read guess
	cnt=$(( cnt+1 ))
	if [ $guess -lt $nr ] 
	then 
		echo "your guess is less than the secret number"
	elif [ $guess -gt $nr ]
	then
		echo "your guess is greater than the secret number"
	fi
done
echo "you guessed it after $cnt guesses"
