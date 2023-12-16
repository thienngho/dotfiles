alias l='lsd -alh'
alias vi='nvim'
alias vim='nvim'
alias ls='lsd'
alias grep='rg'
alias ll='lsd -alh'
alias cat='bat -p'
alias g='git'
alias tf='terraform'
alias tg='terragrunt'
alias h='helm'
alias k='kubectl'
alias kp='kubectl get pods -o wide'
alias kg='kubectl get'
alias kn='kubectl get nodes -o wide'
alias kns='kubens'
alias ktx='kubectx'
alias kd='kubectl describe'
alias kl='kubectl logs'
alias gw='mosh gw'
alias deploy='mosh deploy'

export LANG=en_US.UTF-8
set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden --follow --glob "!.git/*"'

set -gx SPACEFISH_DOCKER_SHOW 'false'
set -gx PATH $PATH $HOME/.krew/bin
set -gx PATH $PATH $HOME/.local/bin

# add the go bin path to be able to execute our programs
set -x GOPATH /Users/thien/golang
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

alias sl="pushd ~/workspaces/slated"
alias cc="pushd ~/workspaces/cuddleclones"
alias zc="pushd ~/workspaces/zencity"
alias bt="pushd ~/workspaces/btse"

eval (direnv hook fish)
starship init fish | source

function fish_user_key_bindings
  bind \cr peco_select_history  # Ctrl-r
end
fish_add_path /opt/homebrew/bin

export KUBE_EDITOR="nvim"
