#! /usr/bin/python
import sys
from datetime import datetime

start_time = datetime.now()
original_stdout = sys.stdout

start_index = 0
end_index = 2

if isinstance(sys.argv[0], int):
    start_index = sys.argv[0]
    end_index = start_index + 1


for P in range(start_index, end_index):
    fileName = "../Player-Data/Input-P{0}-0".format(P)
    input_file = open(fileName, "r+")
    Lines = input_file.read().splitlines()
    input_file.truncate(0)

    creditline = Lines[1]

    UTILIZATION = 0

    for l in range(2, len(Lines)):
        util = int(Lines[l]) / int(creditline)
        UTILIZATION+=util

    with input_file as f:
        sys.stdout = f
        print(Lines[0], UTILIZATION, sep='\n')
        sys.stdout = original_stdout
    
    input_file.close()

end_time = datetime.now()
print('Total Time to Preprocess Data: ' + (end_time - start_time))