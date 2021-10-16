# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshhistfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rushilwiz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.i

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats 'on %F{yellow}(%b)%f'
zstyle ':vcs_info:*' enable git

PROMPT="%F{magenta}%n%f at %F{10}%m%f in %F{cyan}%~%f \$vcs_info_msg_0_
 $ "

RPROMPT="%T"

export WORKON_HOME=$HOME/.virtualenvs
# source ~/.pyenv/versions/3.8.6/bin/virtualenvwrapper_lazy.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
ANTIGEN_LOG=~/antigen.log
source ~/.zsh/antigen.zsh

# antigen bundle ytakahashi/igit
antigen bundle wbingli/zsh-wakatime
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle pipenv

antigen apply

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"

export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export GPG_TTY=$(tty)
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

export PATH=$HOME/.yarn/bin:$PATH

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
