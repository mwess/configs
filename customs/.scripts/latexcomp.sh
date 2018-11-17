#!/bin/bash

fname= `ls | grep *.tex`
pdflatex $fname
prefname=`echo "${fname%%.*}"`

