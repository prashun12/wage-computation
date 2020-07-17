  GNU nano 4.9.3                                                                                 uc8
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

function empDailyWage () {
    local workHrs=$1
    wages=$(($workHrs*$EMP_RATE_PER_HR))
    echo $wage
}
while [[ $totalWorkHr -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHrs="$( getWorkingHrs $((RANDOM%3)) )"
   totalWorkHrs=$(($totalworkHrs+$workHrs))
   dailyWage[$totalWorkingDays=$(($empHrs*$EMP_RATE_PER_HR))



done

totalSalary=$(($totalWorkHrs*$empRatePerHr))
echo ${dailyWageDailyWage[@]}
