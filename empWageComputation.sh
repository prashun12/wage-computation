#!/bin/bash -x
isPartTime=1
isFullTime=2
MAX_HRS_IN_MONTH=100
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   empcheck=$((RANDOM%3))
   case $empcheck in
        $isFullTime)
         empHrs=8
            ;;

        $isPartTime)
           empHrs=4
             ;;

        *)
          empHrs=0
                   ;;
esac


totalEmpHr=$(($totalEmpHr+$empHrs))

done

totalSalary=$(($totalEmpHr*$empRatePerHr))


