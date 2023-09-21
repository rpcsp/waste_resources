#!/bin/bash

while true
do
   echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
done

