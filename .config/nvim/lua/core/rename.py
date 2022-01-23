import glob
import os

for f in glob.glob('*.lua'):
    new_filename = f.replace("mv-","jv-")
    os.rename(f,new_filename)
