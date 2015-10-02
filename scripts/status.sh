#!/bin/bash

HOSTS="192.168.33.101 192.168.33.102 192.168.33.103"

while true; do
  
  wget 192.168.33.101:8080/info --quiet --tries 1 --timeout 0.5 -O /tmp/node1 > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_101="DOWN"
  else
    STATUS_101="UP"
  fi
  VERSION_101=`cat /tmp/node1 | sed -n 's:.*Application version</td><td>\(.*\)</td>.*:\1:p'`

  wget 192.168.33.102:8080/info --quiet --tries 1 --timeout 0.5 -O /tmp/node2 > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_102="DOWN"
  else
    STATUS_102="UP"
  fi
  VERSION_102=`cat /tmp/node2 | sed -n 's:.*Application version</td><td>\(.*\)</td>.*:\1:p'`  

  wget 192.168.33.103:8080/info --quiet --tries 1 --timeout 0.5 -O /tmp/node3 > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_103="DOWN"
  else
    STATUS_103="UP"
  fi
  VERSION_103=`cat /tmp/node3 | sed -n 's:.*Application version</td><td>\(.*\)</td>.*:\1:p'`

  clear
  
  echo "Status 192.168.33.101: $STATUS_101 v.$VERSION_101"
  echo "Status 192.168.33.102: $STATUS_102 v.$VERSION_102"
  echo "Status 192.168.33.103: $STATUS_103 v.$VERSION_103"

  rm /tmp/node*

  sleep 0.5
done
