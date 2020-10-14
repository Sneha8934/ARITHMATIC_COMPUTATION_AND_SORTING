#!/bin/bash -x

echo "--------Welcome To Arithmatic Compution And Sorting ----------"

declare -A arithmaticOperation

read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

result=`echo "scale=2;$firstInput + $secondInput * $thirdInput" | bc`
echo "Result:" $result

resultOne=`echo "scale=2;$firstInput * $secondInput + $thirdInput" | bc`
echo "Result:" $resultOne

resultTwo=`echo "scale=2;$thirdInput + $firstInput / $secondInput " | bc`
echo "Result:" $resultTwo

resultThree=`echo "scale=2;$firstInput % $secondInput + $thirdInput" | bc`
echo "Result:" $resultThree

arithmaticOperation[result]=$result
arithmaticOperation[resultOne]=$resultOne
arithmaticOperation[resultTwo]=$resultTwo
arithmaticOperation[resultThree]=$resultThree

for((index=0; index<=${#arithmaticOperation[@]}; index++))
do
  array[index]=${arithmaticOperation[result$((index+1))]}
done
echo "${array[@]}"

function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if (( $(echo "${array[indexOne+1]} > ${array[indexOne]}" | bc -l ) ))
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
	echo "To data descending order"${array[@]}
}

function ascendingOrderSort()
{
   for(( index=0; index<${#array[@]}; index ++ ))
   do
      for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
      do
         if (( $(echo "${array[indexOne+1]} < ${array[indexOne]}" | bc -l ) ))
         then
            temp=${array[indexOne]}
            array[indexOne]=${array[indexOne+1]}
            array[indexOne+1]=$temp
         fi
      done
   done
   echo "To data ascending order:"${array[@]}
}
function main()
{
descendingOrderSort ${array[@]}
ascendingOrderSort ${array[@]}
}
main
