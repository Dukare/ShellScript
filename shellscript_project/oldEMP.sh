echo "------ **** WELCOME **** ------"
echo "Hey Enter your data for SECURITY PURPOSE: "
echo "please Enter USERNAME"
read user
echo "please enter the PASSWORD:"
read password
count="no"
t=`tty`
exec < updb.txt
while read line
 do
  set $line
  if [[ "$1" == "$user" ]]; then
      count="yes" pass="$2"
  fi
done
exec < $t
if [[ "$count" == "yes" ]]; then
  if [[ "$pass" == "$password" ]]; then

    sh dbEMP.sh
        else echo "enterd PASSWORD is WRONG"
    fi
  else
    echo "enterd USERNAME is WRONG or DOSENT EXIST"
fi
