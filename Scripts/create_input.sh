#!/bin/bash
cd ../Player-Data
rm Input*

for PARTIES in {0..3}
do 
    FILENAME="Input-P${PARTIES}-0"
    touch $FILENAME

    GENDER=$(($RANDOM % 3))
    echo $GENDER >> $FILENAME

    CREDITLINE=$(shuf -i 50-500 -n 1)
    echo ${CREDITLINE}00 >> $FILENAME

    # STMTS=$((1 + $RANDOM % 12))
    STMTS=3
    for i in $( seq 1 $STMTS )
    do
        echo $(shuf -i 50-${CREDITLINE}00 -n 1) >> $FILENAME
    done

done