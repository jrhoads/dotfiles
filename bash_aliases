alias nenv='virtualenv --no-site-package --prompt=\(${PWD##*/}-env\) env'
alias senv='source env/bin/activate'
alias denv='deactivate'
alias :q='exit'

# some more ls aliases
alias ll='ls -lF'
alias lla='ls -laF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias :q='exit'
