function Basics(){
	echo "###########################"
	echo "Welcome to Server Monitor X"
	echo "###########################"
	echo "Current data and time: $(date)"
	echo "###########################"
	echo "Currently logged in user: $(whoami)"
	echo "###########################"
	echo "Firewall status: $(systemctl status firewalld)"
	echo "###########################"
	echo "The system was last booted at: $(who -b | awk -F' ' '{print $3,$4}')" 
	echo "The total uptime is: $(uptime | awk -F" " '{print $3}' | tr -d [,])"
	echo "###########################"
	echo "We are running OS: $(grep -Po '(?<=PRETTY_NAME=\").*(?=\")' /etc/os-release)"
	echo "###########################"
	echo "Total RAM in system is: $(awk -F' ' 'NR==1{ print $2/1024,"MB" }'   /proc/meminfo)"
	echo "Total available RAM is: $(free -m | awk -F' ' 'NR==2{print $NF,"MB"}')"
	echo "###########################"
	echo "System Name: $(hostname)"
	echo "###########################"
}

Basics
