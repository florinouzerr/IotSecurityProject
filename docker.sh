#!/bin/bash

DATE=`date '+%Y-%m-%d %H:%M:%S'`

# COLOR
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

printf "%0s\n"
printf "%0s\n" "${WHITE}[${DATE}]${BLUE} STOP ALL THE CONTAINER${YELLOW}"
sudo docker kill $(sudo docker ps -q)
printf "%0s\n"
printf "%0s\n" "${WHITE}[${DATE}]${BLUE} DELETE ALL STOP CONTAINERS${YELLOW}"
sudo docker rm $(sudo docker ps -a -q)
printf "%0s\n"
printf "%0s\n" "${WHITE}[${DATE}]${BLUE} REMOVE ALL THE IMAGES${YELLOW}"
sudo docker rmi $(sudo docker images -q)
printf "%0s\n"
printf "%0s\n" "${WHITE}[${DATE}]${BLUE} RUN THE BUILD OF THE IMAGE TESTBED${NORMAL}"
sudo docker build --tag=testbed .
printf "%0s\n"
printf "%0s\n" "${WHITE}[${DATE}]${BLUE} CREATE 10 DEVICES ${NORMAL}"
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed
sudo docker run -it -d testbed

