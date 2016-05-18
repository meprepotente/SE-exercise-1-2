#!bin/bash
#SE exercise 1/2 
#Written by: Maynard Louis E. Prepotente

free
TOTAL_MEMORY=$( free | grep Mem: | awk '{ print ( $3 / $2 ) * 100 ')
echo "Memory Usage: " $TOTAL_MEMORY"%"

if [ $# -eq 0]
  then 
    echo "Please Supply Required Parameters:"
    echo "-c : critical threshold"
    echo "-w : warning threshold"
    echo "-e : email to send the report"
fi

while getopts "c:w:e:" opt; do

  case $opt in
  
  c ) echo "Critical Threshold: " $OPTARG;;
  w ) echo "Warning Threshold: " $OPTARG;;
  e ) echo "Email: " $OPTARG;;
  \?) echo "Invalid Argument"ll
  
  esac
done

shift $(($OPTIND -1))
