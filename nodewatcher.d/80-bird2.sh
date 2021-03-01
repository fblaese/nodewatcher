#!/bin/bash

set -e
set -o pipefail

neighbours="$(/usr/sbin/birdc -r show babel neighbors |
		tail -n +5 |
		awk '{ printf "<neighbour><ip>%s</ip><outgoing_interface>%s</outgoing_interface><link_cost>%s</link_cost></neighbour>", $1, $2, $3 }'
	)"

echo -n "<babel_neighbours>$neighbours</babel_neighbours>"

exit 0
