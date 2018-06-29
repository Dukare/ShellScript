echo "   UserPassorrdDataBase  ' this works \t this to "
read id
output=$(grep -n "$id" db.txt |cut -f1 -d:)
echo "$output"
line=$(grep "$id" db.txt)
set $line
echo "$2"
