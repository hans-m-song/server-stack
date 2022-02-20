#!/bin/bash

set -e
set -o pipefail

adlist=$(curl https://v.firebog.net/hosts/lists.php\?type\=tick)
db="/etc/pihole/gravity.db"

for address in $(echo $adlist); do
    insertions="$insertions
    INSERT OR IGNORE INTO adlist (address) VALUES (\"$address\");
    "
done

sqlite3 $db -batch <<EOF
$insertions
.exit
EOF
