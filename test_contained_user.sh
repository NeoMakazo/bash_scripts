#!/bin/bash

# credit below
# [*] Docker Installation: https://medium.com/@airman604/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe



# script starts here
function mainFunc(){
read -p "Do you already have docker installed? (yes, no)" answer
if [ $answer == "no" ]; then
  curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - ; \
  echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list ; \
  sudo apt-get update ; \
  sudo apt-get install docker-ce
elif [$answer == "yes"]; then
  echo "You already have Docker installed. Moving on to the next step.";
else
  echo "Please enter 'yes' or 'no'";\
  mainFunc();
fi
}
# to be continued... 5 years?
