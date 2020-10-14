#!/bin/bash -x

echo "--------Welcome To Arithmatic Compution And Sorting ----------"

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
