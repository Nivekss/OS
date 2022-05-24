c1=$(( ${RANDOM}%2 ))
c2=$(( ${RANDOM}%2 ))
money=$1
options=("split" "steal")
echo "First contestant chose: ${options[$c1]}"
echo "Second contestant chose: ${options[$c2]}"
case $(( $c1+$c2 )) in 

	0)
		echo "The first contestant won $(( money/2 )) and the second contestant won $(( money/2 )).";;
	1)
		if [ $c1 -eq 1 ] 
		then 
			echo "The first contestant won $money and the second contestant won 0."
		else 
			echo "The first contestant won 0 and the second contestant won $money."
		fi;;
	2)
		echo "The first contestant won 0 and the second contestant won 0.";;
esac

