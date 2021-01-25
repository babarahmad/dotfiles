#! /bin/bash

function eth() {
    echo " $(/usr/bin/nmcli d | grep -E 'eno1' | awk '{print $3}')"
}

function customDate() {
    echo " $(date '+%Y/%m/%d %H:%M:%S')"
}

function volume() {
    echo " $(amixer sget Master | grep -E -o "[0-9]{1,3}%" -m 1)"
}

function updates() {
	echo " $(checkupdates | wc -l)"

}

function customBar()
{
while true
do
    xsetroot -name " | $(volume) | $(eth) | $(customDate) | $(updates)"
done
}


customBar
