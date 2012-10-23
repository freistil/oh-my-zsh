#
# Sysadmin helpers
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
