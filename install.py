#This script installs all the software specified in software_list.txt

#import dependencies
import os, sys

#loop through lines in text file
for line in open(f"{sys.argv[1]}software_list.txt", "r"):
    
    #install software and print command output to cmd
    print(os.system(f"choco install -y {line}"))
