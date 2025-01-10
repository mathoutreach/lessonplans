#!/bin/bash

asy -f pdf trinimfig
latexmk -pdf trinim.tex

asy -f pdf -u"N=1" trinimfig
latexmk -pdf -jobname=trinim1 trinim.tex

asy -f pdf -u"N=2" trinimfig
latexmk -pdf -jobname=trinim2 trinim.tex

asy -f pdf -u"N=3" trinimfig
latexmk -pdf -jobname=trinim3 trinim.tex

asy -f pdf -u"N=4" trinimfig
latexmk -pdf -jobname=trinim4 trinim.tex

asy -f pdf -u"N=5" trinimfig
latexmk -pdf -jobname=trinim5 trinim.tex

asy -f pdf -u"N=6" trinimfig
latexmk -pdf -jobname=trinim6 trinim.tex

asy -f pdf -u"N=7" trinimfig
latexmk -pdf -jobname=trinim7 trinim.tex

asy -f pdf -u"N=8" trinimfig
latexmk -pdf -jobname=trinim8 trinim.tex
