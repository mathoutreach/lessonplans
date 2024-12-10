#!/bin/bash

asy -f pdf id.asy
asy -f pdf id.asy -u"symidx=1" -o r.pdf
asy -f pdf id.asy -u"symidx=2" -o l.pdf
asy -f pdf id.asy -u"symidx=3" -o f.pdf
asy -f pdf id.asy -u"symidx=4" -o fr.pdf
asy -f pdf id.asy -u"symidx=5" -o fl.pdf

asy -f pdf f_r.asy
asy -f pdf r_f.asy
