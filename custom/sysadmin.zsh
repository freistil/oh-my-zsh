#
# Alias commands
#

# Wake up a sleeping chef-client
alias chefrun="killall -SIGUSR1 chef-client"

# Show Apache status
export APWATCH_INTERVAL=3
alias apwatch="watch --interval "\$APWATCH_INTERVAL" 'curl -s -H \"Cache-control: no-cache\" \${APACHE_STATUSURL:-http://localhost/server-status\?auto}'"

# Restart Apache
alias aprestart="service apache2 restart"

# Check connection quality
alias conncheck='mtr -i 0.1'
alias connrep='mtr -i 0.1 -r -c 1000'

#
# Alias shortcuts
# (especially useful for mobile logins)
#

# tail -f
alias tf="tail -f"

# pipe grep
alias -g pgr="| grep"

# pipe tail
alias -g pta="| tail"

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
