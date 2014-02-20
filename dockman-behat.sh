#!/bin/bash

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
