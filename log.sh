#!/bin/bash

neutre='\e[0;m'
flred='\e[1;41m'

cd
clear
cd particlcore
[ -f  errorscriptcs.txt ] && echo -e "${flred}ERRORSCRIPT${neutre}" && echo "" && cat  errorscriptcs.txt && echo "" && echo ""
echo -e "${flred}NOHUP.OUT${neutre}"
echo ""
tail -n 10 nohup.out 
echo ""
echo ""
echo -e "${flred}NOHUP.ERR${neutre}"
echo ""
tail -n 10 nohup.err
echo ""
echo ""
echo -e "${flred}DEBUG.LOG${neutre}"
echo ""
cd
cd .particl
tail -n 10 debug.log
