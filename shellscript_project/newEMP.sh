echo "------****** WELCOME TO OUR COMPANY ***** ------"
echo "Hey,  Enter your data for security purpose: "
count2="no"
while true
do
   echo "please Enter USERNAME"
   read user
   count="no"
   t=`tty`
   exec < updb.txt
   while read line
   do
   set $line
   if [[ "$1" == "$user" ]];
       then  echo "This USER NAME is ALREADY EXIST please try DIFFERENT one"
       count="yes"
  fi
  done

exec < $t
if [[ "$count" == "no" ]]; then
  echo "please enter the PASSWORD:"
  read password
  break
  fi
done
if [[ "$count" == "no" ]]; then
  echo "ADD your FIRST NAME: "
  read name
  echo "Add your MIDDLE NAME: "
  read middle
  echo "Add your SURNAME: "
  read Surname
  echo "Add your employee ID NUMBER(4 NUMBER ONLY eg. 1111): "
  read id
  echo "Add your DOB( DD MM YYYY)"
  read dd mm yyyy
  echo "Add your STREET NAME/BUILDING NUMBER/: "
  read adress
  echo "Add your ZIP CODE: "
  read zip
  echo "Add your PHONE NUMBER: "
  read phnno
  echo "Add your JOINING DATE( DD MM YYYY)"
  read dJ mJ yyJJ
  echo "Add your MAIL ID: "
  read mail
  echo "Add your POST: "
  read post
  echo "Add your SALARY(IN RUPEES): "
  read salary
  echo "$user $password" >> updb.txt
  echo "$id  $post  $salary  $name $middle $Surname  $dd $mm $yyyy  $DJ $MJ $YYJJ  $adress  $zip  $phnno  $mail" >> db.txt

  sh dbEMP.sh
fi
