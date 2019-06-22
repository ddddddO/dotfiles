#!/bin/bash
# 現状、Ubuntu/Debian用
# ref: https://blog.tawa.me/entry/2019/04/28/135000

echo "start init"

# tmuxインストール済みか確認
which tmux
if [ $? != 0 ]; then
	sudo apt install tmux
fi

# zshインストール済みか確認
which zsh
if [ $? != 0 ]; then
	sudo apt install zsh
	#(mac)brew install zsh
	
	# ログインシェルを変更
	chsh -s /bin/zsh
fi

# zplugインストール済みか確認
which zplug
if [ $? != 0 ]; then
	# ref: https://qiita.com/Jung0/items/300f8b83520e56766f22
	curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

cd

# --以下からzshに必要なプラグインをインストール
# prezto
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"


# --zplugここまで

exit $?

# init.sh正常終了後、以下を実行
# 1. dotfileらをデプロイ
# 2. exit
# 3. 再度ログイン

