
#!/bin/bash
# A script that checks for the correct number of arguments

if [ "$#" -eq 0  ]; then
   echo "You need to provide arguments"
    exit 1
fi

echo "Arguments are: $* "
echo " total argumenrs are : $# "
