export LANG=ja_JP.UTF-8

# 補完の有効化
autoload -U compinit
compinit

# color有効化
autoload -Uz colors
colors

# historyの設定
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# プロンプト
# 2行目表示
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~ ${vcs_info_msg_0_}
%# "
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# alias
alias la='ls -al'
alias ll='ls -l'

# '#' 以降をコメントとして扱う
setopt interactive_comments
