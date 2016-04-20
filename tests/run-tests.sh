#!/bin/sh

set -e

cd /ansible/roles/openldap
ansible-galaxy install -p ../../ -r galaxy.yml --force
ansible-playbook tests/playbook.yml -i tests/inventory
