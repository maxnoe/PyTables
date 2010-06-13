#!/bin/sh

export PYTHONPATH=..:$PYTHONPATH

pyopt="-O -u"
qlvl="-Q8 -x"
size="500m"
#size="1m"

python $pyopt indexed_search.py -P -c -n $size -m -v
python $pyopt indexed_search.py -P -i -n $size -m -v -sfloat $qlvl
