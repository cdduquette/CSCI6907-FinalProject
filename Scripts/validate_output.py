GENDER_0 = 0
GENDER_1 = 0
GENDER_2 = 0
UTILIZATION_0 = 0
UTILIZATION_1 = 0
UTILIZATION_2 = 0

for P in range(0,4):
    input_file = open("../Player-Data/Input-P{0}-0".format(P))
    Lines = input_file.read().splitlines()

    gender = Lines[0]
    if gender == '0':
        GENDER_0+=1
    if gender == '1':
        GENDER_1+=1
    if gender == '2':
        GENDER_2+=1

    print(f"gender totals: {GENDER_0}, {GENDER_1}, {GENDER_2}")

    creditline = Lines[1]

    for l in range(2, len(Lines)):
        util = int(Lines[l]) / int(creditline)

        if gender == '0':
            UTILIZATION_0+=util
        if gender == '1':
            UTILIZATION_1+=util
        if gender == '2':
            UTILIZATION_2+=util

AVERAGE_0 = UTILIZATION_0 / GENDER_0
AVERAGE_1 = UTILIZATION_1 / GENDER_1
AVERAGE_2 = UTILIZATION_2 / GENDER_2

print("Gender_0 count is {0} with a total utilization of {1} and an average utilization of {2}".format(GENDER_0, UTILIZATION_0, AVERAGE_0))
print("Gender_1 count is {0} with a total utilization of {1} and an average utilization of {2}".format(GENDER_1, UTILIZATION_1, AVERAGE_2))
print("Gender_2 count is {0} with a total utilization of {1}  and an average utilization of {2}".format(GENDER_2, UTILIZATION_2, AVERAGE_2))