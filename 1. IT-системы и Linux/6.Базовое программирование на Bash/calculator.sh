#!/bin/bash

echo "Enter number:"

read a
read b

if [ $a -eq $((a)) ] && [ $b -eq $((b)) ]; then
  echo "Choose operation:"
else
  echo "Your enter is not a number!"
  exit
fi


select operation in + - "*" /; do
	case $operation in
	+)
		echo "Result is:" $(( a + b )); break;;
	-)
		echo "Result is:" $(( a - b )); break;;
    "*")
        echo "Result is:" $(( a * b )); break;;
    /)
        echo "Result is:" $(( a / b )); break;;
	esac
done