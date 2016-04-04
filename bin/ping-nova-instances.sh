#!/bin/bash

ALL_INSTANCES=0
LOSS_INSTANCES=0

for i in $(nova list | grep ACTIVE | awk '{print $4","$13};'); do
  ALL_INSTANCES=$((ALL_INSTANCES + 1))
  name=$(echo $i | awk -F ',' '{print $1}');
  ip=$(echo $i | awk -F ',' '{print $2}');
  p=$(ping -f -i 200 -c 10 -w 1 $ip | grep packet);

  if ! [[ $p =~ .*' 0%'. ]]
  then
    LOSS_INSTANCES=$((LOSS_INSTANCES + 1))
    echo $name: $p;
  fi

done

echo "DONE: $LOSS_INSTANCES of $ALL_INSTANCES instances lost packets."
