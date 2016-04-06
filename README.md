onix.openldap
=============

#[![Build Status](https://travis-ci.org/maxim-nazarenko/ansible-openldap.svg?branch=master)](https://travis-ci.org/maxim-nazarenko/ansible-openldap)

Role for OpenLDAP server installation

Requirements
------------


Role Variables
--------------
```yaml
openldap_domain: "example.com"
openldap_admin_password: "very_secret_password"
openldap_organization: "My Company, LLC"

# Replication slave
openldap_replication_enabled: true
openldap_replication_master_url: "ldap://ldap-master.example.com:389"
openldap_replication_role: "slave"
openldap_replication_bind_dn: "uid=replication-user,ou=users,dc=example,dc=com"
openldap_replication_bind_password: "slave-pass"
```

Dependencies
------------


Example Playbook
----------------


    - hosts: servers
      vars:
      openldap_use_rfc2307bis: true
      openldap_domain: "example.com"
      openldap_admin_password: "very_secret_password"
      openldap_organization: "My Company, LLC"
      roles:
         - role: onix.openldap

License
-------

MIT

Author Information
------------------

Maxim Nazarenko <maxim.nazarenko@onix-systems.com>
