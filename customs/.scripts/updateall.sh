#!/bin/bash

#Update system packages
yaourt -Syua

#Update julia packages
julia -e "Pkg.update()"

#Update python packages
python updatepython.py
