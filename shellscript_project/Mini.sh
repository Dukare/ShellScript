echo "--**********------~~~~~~~~~~~~~~~~~~SHELL SCRIPT PROJECT~~~~~~~~~~~~~~~~~~------**********--"
echo "                        S~~~~~~~~~EMPLOYEE DATABASE PROJECT~~~~~~~~~~~~"
echo "Enter your NAME:"
read name
echo "Hey $name,Are you a NEW EMPLOYEE in company? (press 'y' to yes and 'n' to no)"
read ans
if [[ $ans == "y" ]]; then sh newEMP.sh
else sh oldEMP.sh
fi
