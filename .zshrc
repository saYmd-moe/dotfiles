# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# conda
[ -f /opt/mambaforge/etc/profile.d/conda.sh ] && source /opt/mambaforge/etc/profile.d/conda.sh

# export something...
export EDITOR=vim
export LANG='zh_CN.UTF-8'
export PATH=${HOME}/.local/bin:${PATH}

export http_proxy=http://127.0.0.1:2081
export https_proxy=http://127.0.0.1:2081
export all_proxy=http://127.0.0.1:2081

# some alias
alias ls='exa'
# Set language & editor
alias vi=vim
alias npm=pnpm
alias kssh="kitty +kitten ssh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# .dotfile
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

function add_config
{
	config add \
			~/.config/tofi \
			~/.config/hypr \
			~/.config/kitty \
			~/.config/waybar \
			~/.config/swaylock \
			~/.config/mako \
			~/.config/gtk-3.0 \
			~/.config/gtk-4.0 \
			~/.vimrc ~/.vim \
			~/.wakatime.cfg \
			~/.gtkrc-2.0 \
			~/.zshrc \
			~/.gitconfig
	config status

}


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/opt/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/opt/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/opt/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

