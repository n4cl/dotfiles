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
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

# alias
alias la='ls -al'
alias ll='ls -l'

# '#' 以降をコメントとして扱う
setopt interactive_comments
