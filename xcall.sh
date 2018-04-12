#!/bin/bash
params=$@
pcount=$#
if (( $pcount < 1 )) ; then
    echo no args;
    exit ;
fi
for ((i=1 ; i<=5 ; i=$i+1 )) ; do
    if [ "`hostname`" == "hdp00$i" ] ; then
        echo ==========localhost hdp00$i $params========
        "$params"
    else
        echo ============hdp00$i $params============
        echo
        ssh hdp00$i "$params"
        echo

    fi
done
