# Created by newuser for 5.3.1
#
# golang環境変数設定
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export GOPATH="/mnt/c/DEV/workspace/GO"
export PATH="$GOPATH/bin:$PATH"

# ruby環境変数設定
export PATH="$(rbenv root)/shims:$PATH"
eval "$(rbenv init -)"



# ref: https://qiita.com/Jung0/items/300f8b83520e56766f22
# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# theme (https://github.com/sindresorhus/pure#zplug)　好みのスキーマをいれてくだされ。
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

