#!/bin/bash -x
isPartTime=1
isFullTime=2
MAX_HRS_IN_MONTH=100
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs() {

     case $i in
        $isFullTime)
         workHrs=8
            ;;

        $isPartTime)
           workHrs=4
             ;;

        *)
          workHrs=0
echo $workHrs                   ;;
esac
}


while [[ $totalWorkHr -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHrs="$( getWorkingHrs $((RANDOM%3)) )"
   totalWorkHrs=$(($totalworkHrs+$workHrs))




done

totalSalary=$(($totalWorkHrs*$empRatePerHr))


