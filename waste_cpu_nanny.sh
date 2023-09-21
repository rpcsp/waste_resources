#!/bin/bash

ps | grep waste_cpu_nanny.sh > /dev/null 2>&1 && exit 0

cd "$(dirname "$0")"

while true
do
  if ps | grep waste_cpu.sh > /dev/null 2>&1 ; then
    sleep 10
  else
    ./waste_cpu.sh &
  fi
done

