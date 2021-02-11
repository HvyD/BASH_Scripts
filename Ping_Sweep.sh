#! /bin/bash
#Simple PingSweep Script

echo "Please enter the subnets:"
read SUBNET

for IP in $(seq 1 254); do
  ping -c 1 $SUBNET.$IP
done
