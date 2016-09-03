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
