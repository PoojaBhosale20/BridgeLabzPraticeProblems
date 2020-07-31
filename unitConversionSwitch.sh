#!/bin/bash 
echo "1.FEEt TO INCH"
echo "2.FEEt TO METER"
echo "3.INCH TO FEET"
echo "4.METER TO FEET"
read -p "Enter the conversion type from above :" value
		case $value in
			1)
			read -p "Enter the feet to convert in inch : " feet
			
			echo "Inch: $feet 12" | awk  '{print $1 $2*12}'
				;;
		       2)
			read -p "Enter the feet to convert in meter : " feet
                        
			echo " Meter:  $feet 3.281" | awk  '{print $1 $2/$3}'
				;;
			3)
                        read -p "Enter the inch to convert in feet : "  inch
                        
			echo " Feet: $inch 12:" | awk  '{print $1 $2/$3}'
                                ;;
                       4)
                        read -p "Enter the meter to convert in feet : " meter
                        
			echo " Feet: $feet 3.281:" | awk  '{print $1 $2*$3}'
				 ;;
			*)
			echo "Not a valid option"
				;;		  
esac
