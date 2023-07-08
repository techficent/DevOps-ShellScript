# filesystems mounted?

# CPU utilization? intense process : most memory intensive processes!

function Advanced(){
	
	echo "#################################"
	echo "CPU/Memory utilization (TOP 10)"
	printf "%3s %20s %5s %10s" "PID" "Command" "CPU" "Memory" 
	ps -e o pid,cmd,%cpu,%mem --sort=%cpu | tail -n 11	

	echo "#################################"
	df -Th | awk 'BEGIN\
	 {FS=" "; printf("%-40s\t%-20s\n","FS NAME","PERCENT")}\
	 NR > 1{printf "%-40s\t%-20s\n",  $NF, $6}'
			
	echo "#################################"
	echo "CPU DETAILS"
	lscpu | grep -E "Model name|Thread|Core|CPU max"	
}

Advanced