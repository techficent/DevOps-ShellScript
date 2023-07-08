#!/bin/bash

x-terminal-emulator -geometry 80x24+10+10 -e  "while true; do bash ./basic.sh; sleep 3; done" & x-terminal-emulator -geometry 80x24+650+10 -e  "while true; do bash ./advanced.sh ; sleep 3; done" & x-terminal-emulator -geometry 80x24+650+400 -e  "bash ./dashboard.sh"


