set tabstop=4 "タブ幅を４スペースにする
set shiftwidth=4 "vimで読み込むときタブ幅を４にする
set number "行番号表示
set bs=2 "backspaceで改行削除

syntax on "vim 色がつく"
colorscheme desert "配色 いろいろ選べる"

"vim-plug
"https://qiita.com/mijime/items/f4b337ab41db751388f7
let g:go_fmt_command = 'goimports'
let g:go_def_mode    = 'gopls'
let g:go_info_mode   = 'gopls'
" let g:go_null_module_warning = 0

if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/.vim/plugged/vim-plug/autoload'}

  "vim-go 以下使い方(重要)
  "https://qiita.com/gorilla0513/items/a027885d03af0d6d5863
  " Ctl + ]  定義先ジャンプ
  " Ctl + o  戻る
  "オムニ補完(C-x C-o)
  "https://qiita.com/koara-local/items/6c886eccfb459159c431
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  "https://github.com/junegunn/goyo.vim"
  Plug 'junegunn/goyo.vim'
call plug#end()
