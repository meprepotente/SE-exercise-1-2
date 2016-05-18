#!bin/bash
#SE exercise 1/2 
#Written by: Maynard Louis E. Prepotente

free
TOTAL_MEMORY=$( free | grep Mem: | awk '{ print ( $3 / $2 ) * 100 ')
echo "Memory Usage: " $TOTAL_MEMORY"%"
