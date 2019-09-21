#!/bin/bash
# Authors : Vanessa Zhang & Keyuan Huang
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#I use echo and read to start, then use the egreg to search everything we want. Because we don't need the exact phone number and emails so I used -c
#I catch the gercities.com from regex_practice.txt to a new file by grep and >>
echo "enter filename"
read filename
echo "enter regex"
read reg
grep $reg $filename
egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt
egrep -c "@[A-Za-z0-9]+.com" regex_practice.txt
egrep "(303-[0-9]{3})" regex_practice.txt
grep " geocities.com" regex_practice.txt >>email_results.txt

