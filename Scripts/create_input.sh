#!/bin/bash
cd ../Player-Data

for PARTIES in {0..$0}
do 
    FILENAME="Input-P${PARTIES}-0"
    touch $FILENAME

    GENDER=$(($RANDOM % 2))
    echo $GENDER >> $FILENAME

    CREDITLINE=$(python -S -c "import random; print random.randrange(500,50000)")
    echo $CREDITLINE >> $FILENAME

    for i in {0..$((1 + $RANDOM % 12))}
    do
        UTILIZATION=$(python -S -c "import random; print random.randrange(0,${CREDITLINE})")
        echo $UTILIZATION >> $FILENAME
    done

done