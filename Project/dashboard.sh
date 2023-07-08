function mainLoop(){

	read -t 10 REPLY
	case $REPLY in

	s) 
		echo "#########TAKING SNAPSHOT############"
		
		echo "#########BASIC LOGS#########################"
		./basic.sh 1 >> "./logs/$(date +'%Y_%m_%d_%H_%M').snapshot.log" 2>&1 
		echo "##########Advanced LOGS#######################"
		./advanced.sh >> "./logs/$(date +'%Y_%m_%d_%H_%M').snapshot.log" 2>&1
		;;
	esac
}



while true
do
	echo "Enter s for screenshot"
	mainLoop
done
