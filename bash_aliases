alias :q='exit'
alias b="byobu"
alias cat="rich"
alias denv='conda deactivate'
alias git="hub"
alias ls="lsd -h"
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -lF'
alias lla='ls -laF'
alias n16="chnode node-16.10.0"
alias nenv2='conda create --name ${PWD##**/} python=2 && senv && pipup'
alias nenv3='conda create --name ${PWD##**/} python=3 && senv && pipup'
alias nenv='conda create --name ${PWD##**/} --clone exampleenv && senv && pipup'
alias nenv='virtualenv --no-site-package --prompt=\(${PWD##*/}-env\) env && senv && pipup'
alias pipup='pip install -U pip'
alias pss="python -m http.server"
alias senv='conda activate ${PWD##**/}'
alias ssh="ssh -q"
alias tma='tmux attach-session -t remote &> /dev/null || tmux new-session -s remote'
