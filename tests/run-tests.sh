#!/bin/sh

set -e

cd $(dirname $(readlink -f "$0"))/../tests
ansible-galaxy install -p ../../ -r galaxy.yml --force
ansible-playbook playbook.yml -i inventory
