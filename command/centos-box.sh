#!/usr/bin/env bash

set -e

sudo rm /etc/sysconfig/network-scripts/ifcfg-eth1
sudo ln -s -f /dev/null /etc/udev/rules.d/70-persistent-net.rules
sudo rm -rf /dev/.udev/
sudo rm -f /lib/udev/rules.d/75-persistent-net-generator.rules
sudo du -sh /var/cache/yum
sudo yum clean all

exit