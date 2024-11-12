
#!/bin/bash
# A simple conditional script
if [ $# -ne 1]; then
echo " At least one  number is required"
exit 1
fi
if [ $1 -gt 10 ]; then
    echo "The number is greater than 10"
else
    echo "The number is less than or equal to 10"
fi
