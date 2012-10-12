#
# Sysadmin helpers
#

# Wake up a sleeping chef-client
alias chefrun="killall -SIGUSR1 chef-client"

# Show Apache status
export APWATCH_INTERVAL=3
alias apwatch="watch -i "\$APWATCH_INTERVAL" 'curl -s -H \"Cache-control: no-cache\" http://localhost/server-status\?auto'"

# Restart Apache
alias aprestart="service apache2 restart"
