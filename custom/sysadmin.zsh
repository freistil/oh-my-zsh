#
# Aliases
#

# Wake up a sleeping chef-client
alias chefrun="killall -SIGUSR1 chef-client"

# Show Apache status
export APWATCH_INTERVAL=3
alias apwatch="watch --interval "\$APWATCH_INTERVAL" 'curl -s -H \"Cache-control: no-cache\" http://localhost/server-status\?auto'"

# Restart Apache
alias aprestart="service apache2 restart"

# Check connection quality
alias conncheck='mtr -s 1500 -r -c 1000 -i 0.1'

#
# Utilities
# 

# Make a backup of a file
function bak() {
  cp $1 ${1}.bak
}

#
# Configuration
#

# Report CPU usage for commands running longer than 10 seconds
REPORTTIME=10
