if ! [ $# -eq 2 ]
then
    echo "usage: address ulist uname"
elif ! [ -f $1 ]
then
    echo "filename $1 not found"
else
	result=$(grep -w "$2" "$1")
if [ -n "$result" ]
then
    echo "username $2 exists"
else
    echo $2>>$1
fi
fi
