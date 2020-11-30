"自定义按键映射
"切换缓冲区，使用了 https://github.com/tpope/vim-unimpaired 插件的映射
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
"轻松展开当前文件所在的目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

colorscheme desert
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set ambiwidth=double
set nocompatible
set nu  "行号
set hls
set incsearch
filetype off
filetype plugin on
set laststatus=2 "始终显示状态栏
set expandtab
set tabstop=4
set ai!
set shiftwidth=4
set softtabstop=4

set smartcase
syntax enable

"语言和编码设置
set fileencodings=utf-8,GB2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8
set helplang=cn
set langmenu=zh_CN.UTF-8
language messages zh_CN.UTF-8

let mapleader="\<space>"  "映射leader键为空格

nnoremap <Leader>e :e ~/.vimrc<cr>  "编辑配置文件
nnoremap <Leader>s :source ~/.vimrc<cr>  "重新加载配置文件
nnoremap <Leader>w :w<cr>  "保存文件

" airline配置
set t_Co=256
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1  "字体
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
let g:airline_theme='molokai'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡ '

"plug 管理器配置
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'yianwillis/vimcdoc'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


