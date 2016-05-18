#!bin/bash
#SE exercise 1/2 
#Written by: Maynard Louis E. Prepotente
#Voyager IT Cadetship Training Program
#Script Name: memory_check.sh 

MU=$( free | grep Mem: | awk '{ print ( $3 / $2 ) * 100 }')

while getopts "c:w:e:" opt; do

  case $opt in
  
  c ) CT=$OPTARG;;
  w ) WT=$OPTARG;;
  e ) EM=$OPTARG;;
  \?) echo "Invalid Argument";;
  
  esac
done

shift "$(($OPTIND -1))"

if [ ! -z "$CT" ] && [ ! -z "$WT" ] && [ ! -z "$EM" ]
  then
    if [[ $CT < $WT ]]
      then
        echo "Critical Threshold should be greater than the Warning Threshold"
      else
        printf " Total Memory Usage: %0.2f \n" $MU
        echo " Critical Threshold: $CT"
        echo " Warning Threshold:  $WT"
        echo " Email:              $EM"
    fi
else
    echo "Please Supply these Parameters:"
    echo "-c: critical threshold, "
    echo "-w: Warning Threshold, "
    echo "-e: Email to send the report"
fi    
  
