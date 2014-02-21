#!/bin/bash

red="$(tput setaf 1)"
yel="$(tput setaf 3)"
blue="$(tput setaf 4)"
white="$(tput setaf 7)"

reset="$(tput sgr0)"
echo -e "${yel}  Behat ${white} + ${red} Gearman ${white} + ${blue} Docker ${reset}"


#
# import vars
#
gm_alias=$1
gm_port=$2
behat_cfg=$3
behat_cfg_tpl=$4
#
# configure docker link variables
# 
gearman_addr="${gm_alias}_PORT_${gm_port}_TCP_ADDR"
gearman_port="${gm_alias}_PORT_${gm_port}_TCP_PORT"


#
# write the config
# 
sed "s|GEARMAN_MASTER|${!gearman_addr}:${!gearman_port}|g" $behat_cfg_tpl > $behat_cfg


#
#run the behat command
#
bin/behat --config $behat_cfg
