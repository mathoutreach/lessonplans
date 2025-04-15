#!/bin/bash

asy -f pdf trinimfig

asy -f pdf -u"N=1" trinimfig -o trinimfig1
asy -f pdf -u"N=2" trinimfig -o trinimfig2 
asy -f pdf -u"N=3" trinimfig -o trinimfig3 
asy -f pdf -u"N=4" trinimfig -o trinimfig4 
asy -f pdf -u"N=5" trinimfig -o trinimfig5 
