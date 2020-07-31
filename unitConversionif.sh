#!/bin/bash

feet=12
inch=42

echo " Feet: $inch $feet Feet:" | awk  '{print $1 $2/$3}'


feet1=60

feet2=40


echo " Meter: $feet1 $feet2" | awk  '{print $1 $2*$3*0.3}'


