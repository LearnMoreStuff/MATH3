#!/bin/bash

name=$1

echo "Hello $name. Our team of devs hope's you get all of these right. MATH2 Made By CloIT LLC"

echo "If you get any of these wrong you start again. Sowwyyy."


#first math

echo "What is 2x2."

read math

if [[ 4 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 4x4."

read math

if [[ 16 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 5x5."

read math

if [[ 25 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 6x6."

read math

if [[ 36 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 7x7."

read math

if [[ 49 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 8x8."

read math

if [[ 64 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 9x9."

read math

if [[ 81 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "What is 10x10."

read math

if [[ 100 == $math ]]; then
echo "Thats Right"
else
echo "Thats Wrong"
exit 1
fi

echo "Congrats $name, if you have made it this far that means you know all of these. Thank you $name supporting the CloIT LLC MATH2 Project."
