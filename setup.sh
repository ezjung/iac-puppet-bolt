#!/bin/bash
# puppet bolt vs puppetlabs
# agent-less vs agent
# yaml-first vs puppet language first


export BOLT_VERSION="focal" # ubuntu 20.04

wget "https://apt.puppet.com/puppet-tools-release-$BOLT_VERSION.deb"
sudo dpkg -i puppet-tools-release-*.deb
sudo apt-get update
sudo apt-get install puppet-bolt
rm puppet-tools-release-*.deb

# puppet-VM = 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
# git remote add origin https://<Token>@github.com/ezjung/iac-puppet.git
# git remote add origin https://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@github.com/ezjung/iac-puppet-bolt.git
