#!/bin/bash

name=$1
RANDOM=$2

echo "Hi $name thank you for getting MATH3 we hope you enjoy the new and improved MATH!!!"

sleep 1

echo "If you get the math wrong you start over!!"

sleep 1

sleep 1

echo "What is $RANDOM"

read math

if [[ $RANDOM == $RAMDOM ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

sleep 2

echo "What is 2+2"

read math

if [[ 4 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 3+3"

read math

if [[ 6 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 4+4"

read math

if [[ 8 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 5+5"

read math

if [[ 10 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 6+6"

read math

if [[ 12 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 7+7"

read math

if [[ 14 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 8+8"

read math

if [[ 16 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 9+9"

read math

if [[ 18 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
exit 1
fi

echo "What is 10+10"

read math

if [[ 20 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
fi

echo "What is "

read math

if [[ 20 == $math ]]; then
echo "Thats right"
else
echo "Wrong"
fi
