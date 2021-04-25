#! /usr/bin/python
import sys, os, random

os.chdir('Player-Data/')

num_stmts = int(sys.argv[1])
end_index = int(sys.argv[2])

for P in range(end_index):
    fileName = "Input-P{0}-0".format(P)
    input_file = open(fileName, "w")

    input_file.write(str(random.randint(0,2)) + "\n")

    creditline = random.randint(1000, 50000)
    input_file.write(str(creditline) + "\n")
    
    for s in range(num_stmts):
        input_file.write(str(random.randint(0, creditline)) + "\n")

    input_file.close()
