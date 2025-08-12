alias l='lsd -alh'
alias br='brew'
alias vi='nvim'
alias vim='nvim'
alias ls='lsd'
alias grep='rg'
alias ll='lsd -alh'
alias cat='bat -p'
alias g='git'
alias gad='git add'
alias gcm='git cm'
alias gpl='git pull'
alias gps='git push'
alias gst='git status'
alias gdf='git diff'
alias glg='git lg'
alias gbr='git branch'
alias gsh='git show'
alias gsw='git switch'
alias gco='git checkout'
alias gcl='git clone'
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
set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden --follow --glob "!.git/*"' --glob "!.terraform/*" --glob "!node_modules/*" --glob "!.terragrunt-cache/*"

set -gx SPACEFISH_DOCKER_SHOW 'false'
set -gx PATH $PATH $HOME/.local/bin

# add the go bin path to be able to execute our programs
set -x GOPATH /Users/thien/golang
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

alias sl="pushd ~/workspaces/slated"
alias cc="pushd ~/workspaces/cuddleclones"
alias fc="pushd ~/workspaces/falcon"

# eval (direnv hook fish)
starship init fish | source

function fish_user_key_bindings
  bind \cr peco_select_history  # Ctrl-r
end
fish_add_path /opt/homebrew/bin

export KUBE_EDITOR="nvim"
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
