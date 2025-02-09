#
# Quick directory jumps
#
# Quadlet root directory
alias conf='cd ~/.config/containers/systemd'
# Caddy, Homarr directory
alias web='cd ~/.config/containers/systemd/WebPod'
# Jellyfin and multimedia containers
alias fin='cd ~/.config/containers/systemd/MultimediaPod'
# Utility containers
alias util='cd ~/.config/containers/systemd/Utilities'
#
# Command shortcuts
#
# Caddy commands
alias caddy='podman exec -t qor-caddy /app/bin/caddy'
alias rcaddy='podman exec -t qor-caddy /app/bin/caddy reload -c /app/configs/Caddyfile'
alias rfcaddy='podman exec -t qor-caddy /app/bin/caddy reload -c /app/configs/Caddyfile --force'
# Podman
alias docker='podman'
alias pexec='podman exec'
alias plist='podman ps -a'
alias pdlist='podman pod ls'
alias pvlist='podman volume ls'
alias pnlist='podman network ls'
#
# Systemd shortcuts
#
# Daemon reload
alias dreload='systemctl --user daemon-reload'
# Service start
alias dstart='systemctl --user start'
# Service stop
alias dstop='systemctl --user stop'
# Service restart
alias drestart='systemctl --user restart'
# Service status
alias dshow='systemctl --user status'
# Journalctl
alias jshow='journalctl -xe'
alias jlook='journalctl -xeu'
#
# Bash styling
#
PS1='VL30 \[\e[2m\][\[\e[0;38;5;183m\]\d\[\e[0m\] - \[\e[38;5;219m\]\A\[\e[0;2m\]]\[\e[0m\] \[\e[2m\](\[\e[0;38;5;224m\]\w\[\e[0;2m\])\n\[\e[0;38;5;225m\]\u\[\e[0;2m\]:\[\e[0m\] '
