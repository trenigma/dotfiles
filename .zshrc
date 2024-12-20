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
alias cdg="cd ~/trenigma"
alias gpu="git pull"
alias gs="clear && git status"
alias gd="git diff"
alias gdf="diff --name-only"  #get file names of modified [unstaged] files
alias gshf="show --format='' --name-only"  # get file names of files modified by the commit
alias gmm="git commit -m"
alias gaa="git add"
alias gps="git push"
alias gpso="git push -u origin"
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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tree/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tree/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tree/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tree/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/Cellar/tfenv/3.0.0/versions/1.7.2/terraform terraform
source ~/.iterm2_shell_integration.zsh
