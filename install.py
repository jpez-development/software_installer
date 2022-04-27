import os, sys

for line in open(f"{sys.argv[1]}software_list.txt", "r"):
    print(os.system(f"choco install -y {line}"))