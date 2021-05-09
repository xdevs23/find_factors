#!/bin/bash -e

input=$1
curdivisor=1

echo

while [ $curdivisor -le $input ]; do
  echo -en "\r\033[K\r$input / $curdivisor"
  result="$(echo "scale=10;$input/$curdivisor" | bc | sed -re 's/0*$//; s/[.]$//')"
  if ! echo -n "$result" | sed -re '/^[0-9]+?[.][0-9]+?$/!{q1}' >/dev/null; then
    echo -e "\r\033[K\r$curdivisor x $result"
  fi
  curdivisor=$(($curdivisor+1))
done

