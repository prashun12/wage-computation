#!/bin/bash -x

var=`echo $(( Random % 2))`
if [ $var -eq 1 ]
then
      echo 'employ is present'
else
      echo 'employ is not present'
fi 
