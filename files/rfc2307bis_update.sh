#!/bin/bash

input_file=${1:-}
rfc2307bis_file=${2:-}

if [ -z "$input_file" -o -z "$rfc2307bis_file" ]; then
    echo "Please run this script as: SCRIPT </file/to/edit> </file/with/rfc2307bis.ldif>" > /dev/stderr
    exit 1
fi

sed -i '
/^dn: cn={2}nis/,/^$/ d
/^dn: cn={3}inetorgperson,cn=schema,cn=config/ {
r '$rfc2307bis_file'
a
a dn: cn={3}inetorgperson,cn=schema,cn=config
d
}' "$input_file"
