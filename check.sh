#!/bin/bash
if [ ! $# -eq 1 ];then
    echo "Usage: $0 candidate-string";
    exit 1;
fi
j=0
half=`expr ${#1} / 2`
for (( i=`expr ${#1} - 1`; i>=half; i-- )); do
    if [ ! ${1:$i:1} = ${1:$j:1} ];then
	echo "Not palindrome";
	exit 1;
    fi
j=`expr $j + 1`;
done

echo "Palindrome"
exit 0
