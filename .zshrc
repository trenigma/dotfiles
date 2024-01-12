# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME="powerlevel10k/powerlevel10k"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# Aliases

alias p3="python3"

# terraform aliases
alias tff="terraform fmt"
alias tfv="terraform validate"
alias tfa="terraform apply"
alias tfp="terraform plan"
alias tfd="terraform destroy"
alias tfi="terraform init"
alias tfs="terraform show"
alias tfsl="terraform state list"
alias tfg="terraform graph"

# git aliases
alias cdg="cd ~/Git"
alias gs="clear && git status"
alias gd="git diff"
alias gmm="git commit -m"
alias gaa="git add"
alias gps="git push"
alias gpso="git push origin"
alias gckb="git checkout"
alias gcb="git checkout -b"
alias gl="git log"
alias grh="git reset HEAD"

# kube aliases
alias k="kubectl"

# gcloud aliases
alias gc="gcloud"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
