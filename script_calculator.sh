#! /bin/bash

while true
do
  read a b c
  if [[ $a == "exit" ]]; then echo bye; exit; fi
  if [[ -z $a || -z $b || -z $c ]]; then echo error; exit; fi
  opers='+ - * / % **'
  if [[ $opers =~ "$b" ]]; then let "res = $a $b $c"; echo $res
  else echo error; exit; fi
done
