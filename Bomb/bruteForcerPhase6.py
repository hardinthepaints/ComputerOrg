'''this is a program to attempt to brute force the rest of phase 6 of the bomb lab assigned in computer organiztion'''
import itertools #need this for permutations of a list
import os #need this to do system commands

#generate all the permutations of the 6 numbers
x = itertools.permutations([1,2,3,4,5,6])

#count the booms
boomCount = 0

#string to hold system output
systemOutput = ""

#iterate through each permutation
for tup in x:
    #create a file to input into the bomb
    bruteFile = open("brute.txt", 'w')
    
    #open the template file with solutions 1 through 5
    templateFile = open("solutions1thru5.txt", 'r')
    
    #write first 5 solns to brute file
    bruteFile.write(templateFile.read())
    
    #write the permutation for the 6th solution
    permutation = "{0} {1} {2} {3} {4} {5}".format(tup[0], tup[1],tup[2], tup[3], tup[4], tup[5])
    bruteFile.write(permutation)
    
    #close files
    bruteFile.close()
    templateFile.close()
    
    #assign the output to a string
    os.system("./bomb < brute.txt > check.txt")
    
    f = open("check.txt", "r")
    contents = f.read()
    if "BOOM!!!" in contents:
        boomCount += 1
    f.close()
print boomCount