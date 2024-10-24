# To really have that 1:1 feel
alias docker="podman"
# Podman - Process and Logs
alias plist="podman ps -a"
alias plog="podman logs"
alias pshow="podman container inspect"
alias pexec="podman exec"
# Podman Volumes
alias pvolls="podman volume ls"
alias pvolrm="podman volume rm"
alias pvolrmf="podman volume rm -f"
# Podman Network
alias pnetls="podman network ls"
alias pnetrm="podman network rm"
alias pnetrmf="podman network rm -f"
# Podman Secrets
alias psecret="podman secret create"
alias psecretls="podman secret ls"
# Systemctl (rootful)
alias dstart="systemctl start"
alias dstop="systemctl stop"
alias denable="systemctl enable --now"
alias ddisable="systemctl disable"
alias dreload="systemctl daemon-reload"
alias dstat="systemctl status"
alias dshow="systemctl show"
# Container interaction
alias cscli="podman exec -t crowdsec cscli"
alias csbounc="podman exec -t crowdsec cscli bouncers list"
alias csdecs="podman exec -t crowdsec cscli decisions list"
alias creload="podman exec -t qor-caddy /app/bin/caddy reload -c /app/configs/Caddyfile"
# ls colors
alias ls="ls --color=auto"
# Bash customization
PS1='\[\e[2m\][\[\e[0;38;5;183m\]\d\[\e[0m\] - \[\e[38;5;219m\]\A\[\e[0;2m\]]\[\e[0m\] \[\e[2m\](\[\e[0;38;5;224m\]\w\[\e[0;2m\])\n\[\e[0;38;5;225m\]\u\[\e[0;2m\]:\[\e[0m\] '
LANG=en_US.UTF-8
