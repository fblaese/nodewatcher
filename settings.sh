## GLOBAL ##

# The MAC address of this interface is used to assign new data to existing
# monitoring entries. To prevent duplicate entries, data is only sent if this interface
# exists, isn't blacklistend and is administratively UP.
# If the MAC of this interfaces changes, a new monitoring entry is created!
UNIQUE_INTERFACE="eno1"


## 10-systemdata ##
#description=""
latitude="52"
longitude="12"
#position_comment=""
contact="meine@email.de"
HOOD="Testhood"
#vpn_active=1

MODEL="Mein PC"
DISTRIB_ID="Debian"
DISTRIB_RELEASE="$(cat /etc/debian_version)"


## 20-interfaces ##
# these interfaces are not sent at all
IFACEBLACKLIST="lo"
# the ip addresses of these interfaces are included
IPWHITELIST="br-mesh"


## 30-clients ##
CLIENT_INTERFACES="br-mesh"
