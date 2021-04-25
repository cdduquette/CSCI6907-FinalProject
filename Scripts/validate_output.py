#! /usr/bin/python
import sys
from datetime import datetime

start_time = datetime.now()

end_index = int(sys.argv[1])

GENDERS = [0, 0, 0]
UTILIZATIONS = [0, 0, 0]
AVERAGES = [0, 0, 0]

for P in range(0,end_index):
    input_file = open("../Player-Data/Input-P{0}-0".format(P))
    Lines = input_file.read().splitlines()

    gender = int(Lines[0])
    GENDERS[gender] +=1

    creditline = Lines[1]

    UTILIZATION = 0
    num_of_months = 0

    for l in range(2, len(Lines)):
        util = int(Lines[l]) / int(creditline)
        UTILIZATION+=util
        num_of_months+=1

    UTILIZATIONS[gender] += UTILIZATION / num_of_months

    print('For player, {0}, the count is {1}, the sum is {2}'.format( P, num_of_months, UTILIZATION))


for i in range(len(GENDERS)):
    if (GENDERS[i] > 0):
        AVERAGES[i] = UTILIZATIONS[i] / GENDERS[i]
        
for i in range(len(GENDERS)):
    print("Gender {0} count is {1} with a total utilization of {2} and an average utilization of {3}".format(i, GENDERS[i], UTILIZATIONS[i], AVERAGES[i]))

end_time = datetime.now()
print('Total Time to Preprocess Data: ' + str(end_time - start_time))