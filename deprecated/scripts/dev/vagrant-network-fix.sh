#!/bin/bash
MACHINE_IP=192.168.33.10
KEY_FILE=~/.vagrant.d/insecure_private_key
TIMEOUT="-o ConnectTimeout=5"

function run_in_vagrant {
	ssh vagrant@$MACHINE_IP -i $KEY_FILE $TIMEOUT "$1"
}

set -ex

run_in_vagrant "sudo rm -f /etc/udev/rules.d/70-persistent-net.rules"
run_in_vagrant "sudo rm -f /etc/sysconfig/network-scripts/ifcfg-eth1"
run_in_vagrant "sudo rm -f /etc/sysconfig/network-scripts/ifcfg-eth2"
