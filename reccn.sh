#!/bin/bash
echo "================================================================="
echo "|  |^^^^|	 |^^^^^^  |^^^^^^  |^^^^^^^|   |\    |	  |\	|    |"
echo "|	 |____|  | 	  |	   |	   |   | \   |	  | \	|    |"
echo "|	 |\	 |-----	  |	   |	   |   |  \  |	  |  \	|    |"
echo "|	 | \	 |	  |	   |	   |   |   \ |	  |   \ |    |"
echo "|	 |  \	 |______  |______  |_______|   |    \|    |    \|    |"
echo "================================================================="
echo
echo
echo "-------------------------------------------------------------"
echo "| Welcome to my newly made Recconiasance Automator.         |"    
echo "| This tool is design to automate your reconniasance phase. |"
echo "| To start reccon please hit 1, If not please hit 0.        |"
echo "|___________________________________________________________|"
read a
if [ $a -eq 1 ] ;
then
echo "Great Choice!!"
echo 
echo "So, Please enter your desire domian to saerch"
read b
sublist3r -d $b -o terminalOutput.txt
echo
echo
echo "NSLOOKUP is starting"
nslookup $b   
echo
echo 
theHarvester -d $b -l 500 -b all  
echo
echo 
echo "WHOIS is starting"
whois $b
echo
echo
elif [ $a -eq 0 ] ;
then 
echo "sad to know you are not willing to use me :("
else
echo "Invalid Input!"
fi
