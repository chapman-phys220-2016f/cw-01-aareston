#!/bin/bash
#Bash script to create directory with 100 temporary files labeled file[num].tmp

mkdir testfiles;
cd testfiles;
for i in $(seq -f "%03g" 1 100)
do
	touch ./file$i.tmp 
done
cd ..
echo ALL done

### INSTRUCTOR COMMENTS ###
# Very nice. For an alternative approach, check out
#    touch file{001..100}.tmp
# However, seq is more flexible and useful to know.
#
# Also note that often you will see the construction:
#    CWD=$(pwd)
#    cd somewhere else
#    <code here>
#    cd $CWD
############################
