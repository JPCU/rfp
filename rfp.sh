#!/bin/bash
GITHUB_BASE_URL="https://raw.github.com/"

red='\e[0;31m'
green='\e[0;32m'
endColor='\e[0m'

x=0
while [ $x -ne 200 ]
do
  read -p "Enter script path (user/project/script.sh): " GITHUB_SCRIPT_PATH
  read -p "Enter Github Username: " GITHUB_USERNAME
  read -s -p "Enter Github Password: " GITHUB_PASSWORD
  x="$(curl -o /dev/null -u ${GITHUB_USERNAME}:${GITHUB_PASSWORD} --silent --head --write-out '%{http_code}\n' ${CONFIG_BASE_URL}/${GITHUB_SCRIPT_PATH})"
    printf " \n"
      if [ $x -ne 200 ]
          then
              printf "${red}Invalid Path\\User\\Password try again\n${endColor}"
      fi
done

curl -o /dev/null -u ${GITHUB_USERNAME}:${GITHUB_PASSWORD} ${CONFIG_BASE_URL}/${GITHUB_SCRIPT_PATH} | sh
