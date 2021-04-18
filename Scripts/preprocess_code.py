#! /usr/bin/python
import sys
from datetime import datetime

start_time = datetime.now()

start_index = 0
end_index = 2

if len(sys.argv) > 1:
    start_index = int(sys.argv[1])
    end_index = start_index + 1


for P in range(start_index, end_index):
    fileName = "../Player-Data/Input-P{0}-0".format(P)
    input_file = open(fileName, "r+")
    Lines = input_file.read().splitlines()

    creditline = Lines[1]

    UTILIZATION = 0

    for l in range(2, len(Lines)):
        util = int(Lines[l]) / int(creditline)
        UTILIZATION+=util

    input_file.seek(0)
    input_file.write(Lines[0] + "\n")
    input_file.write(str(UTILIZATION) + "\n")
    input_file.truncate()
    
    input_file.close()

end_time = datetime.now()
print('Total Time to Preprocess Data: ' + str(end_time - start_time))