#!/bin/bash
num=`wmctrl -d | grep '\*' | cut -d' ' -f 1`
name=`wmctrl -lx | grep $1 | grep " $num " | tail -1`
host=`hostname`
out=`echo ${name##*$host}`

if [[ -n "${out}" ]]
    then
        `wmctrl -a "$out"`
    else
        $2
fi
