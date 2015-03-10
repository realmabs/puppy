#!/bin/sh
sudo puppet apply /home/user/puppet/manifests/site.pp --modulepath=/home/user/puppet/modules/ $*
