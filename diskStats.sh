iowait=`cat diskUtilization.tmp | head -4 | tail -1 | awk '{print $4}'`
await=`cat diskUtilization.tmp | tail -2 | head -1 | awk '{print $10}'`
svctm=`cat diskUtilization.tmp | tail -2 | head -1 | awk '{print $13}'`
kBps_read=`cat diskUtilization.tmp | tail -2 | head -1 | awk '{print $6}'`
kBps_wrtn=`cat diskUtilization.tmp | tail -2 | head -1 | awk '{print $7}'`
timestamp=`date +%s%N | cut -b1-13`
printf "$timestamp,$iowait,$await,$svctm,$kBps_read,$kBps_wrtn"