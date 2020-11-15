#!/bin/sh
# License; GPL v3

debug() {
	(>&2 echo "nodewatcher: $1")
}

debug "Collecting information about connected clients"

client_count=0
dataclient=""
for clientif in ${CLIENT_INTERFACES}; do
	cc=$(ip n | grep $clientif | grep -e REACHABLE -e DELAY | grep lladdr | awk '{ gsub(/.*lladdr /,""); print $1 }' | sort -u | wc -l)
	client_count=$((client_count + cc))
	dataclient="$dataclient<$clientif>$cc</$clientif>"
done

echo -n "<client_count>$client_count</client_count>"
echo -n "<clients>$dataclient</clients>"

exit 0
