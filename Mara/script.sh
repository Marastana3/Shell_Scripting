if[ $# -lt 4 ]
then
    echo "Error! The script does not have enough arguments!"
else 
    echo "Correct!"
fi

counter=0

arg0="$0"
arg1="$1"

shift 2

for var in "$@"
do
    if test "$var" -gt 10
    then (( counter++ ))
    fi
done

echo "Numbers greater than 10: $counter"