#!/bin/bash

HOSTS="192.168.33.101 192.168.33.102 192.168.33.103"

while true; do
  
  wget 192.168.33.101:8080/info --quiet --tries 1 --timeout 0.5 -O /dev/null > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_101="DOWN"
  else
    STATUS_101="UP"
  fi

  wget 192.168.33.102:8080/info --quiet --tries 1 --timeout 0.5 -O /dev/null > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_102="DOWN"
  else
    STATUS_102="UP"
  fi
  wget 192.168.33.103:8080/info --quiet --tries 1 --timeout 0.5 -O /dev/null > /dev/null
  if [ ! $? -eq 0 ]; then
    STATUS_103="DOWN"
  else
    STATUS_103="UP"
  fi

  clear
  
  echo "Status 192.168.33.101: $STATUS_101"
  echo "Status 192.168.33.102: $STATUS_102"
  echo "Status 192.168.33.103: $STATUS_103"

  sleep 0.5
done
