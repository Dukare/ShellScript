echo "~~~~~~~~  WELCOME IN DATABASE OF EMPLOYESES ~~~~~~~~"
while true
do
  echo "~~~~~~~~~~~~~~~~~~~~~SELECT OPTIONS FROM MENU~~~~~~~~~~~~~~~~~~~~~~"
  echo "1.ADD EMPLOYEE TO THE DATABASE "
  echo "2.DELETE EMPLOYEE FROM THE DATABASE"
  echo "3.UPDATE DATA FROM DATABASE"
  echo "4.DISPLAY THE INFORMATION OF AN EMPLOYEE"
  echo "5.GET SALARY OF AN EMPLOYEE"
  echo "6.STOP"
  read option
case $option in
  1) echo "Enter  your ID NUMBER  : "
  read id
  line=$(grep "$id" db.txt)
  set $line
  if [[ "$2" == "manager" ]]; then
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
    echo "$id  $post  $salary  $name $middle $Surname  $dd $mm $yyyy  $DJ $MJ $YYJJ  $adress  $zip  $phnno  $mail" >> db.txt
  fi
    ;;
  2)   echo "Enter  your ID NUMBER  : "
    read id
    line=$(grep "$id" db.txt)
    set $line
    if [[ "$2" == "manager" ]]; then
        echo "enter ID NUMBER of the employe"
          read did
           sed "/${did}/d"  db.txt >> temp.txt
          cp temp.txt db.txt
          rm temp.txt
          touch temp.txt
        fi
 ;;
 3)
  echo "Enter  your ID NUMBER  : "
  read id
  line=$(grep "$id" db.txt)
  set $line
  if [[ "$2" == "manager" ]]; then
     echo "Enter ID NUMBER of that person : "
     read id
     output=$(grep -n "$id" db.txt |cut -f1 -d:)
     echo "$output"
     echo "Enter OLD  DATA"
     read odata
     echo "enter NEW DATA"
     read ndata
     sed -i "${output}s/$odata/$ndata/" db.txt
  else
     echo "you dont have PERMISSON to change the DATA"
 fi
 ;;
 4)  echo "Enter ID NUMBER of that person  : "
 read id
      grep "$id" db.txt
 ;;
  5)
  echo "Enter ID NUMBER of that person  : "
  read id
  line=$(grep "$id" db.txt)
  set $line
  echo "$3"
  ;;
  6)
  exit 0
  ;;
  *)
  echo "INVALID NUMBER!" ;;
esac
done
