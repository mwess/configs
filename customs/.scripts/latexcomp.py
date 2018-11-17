#!/bin/python3
import os

curdir = os.getcwd()

for _,_,files in os.path(curdir):
    for f in files:
        if f.endsWith(".tex"):
            fname = f
            break


