#!/bin/bash
#
#echo "$user@hostname:~$"

cp -p ./bashrc/bashrc-non-host.curdirOnly ~/.bashrc

exec bash
