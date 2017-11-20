" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Pathogen
execute pathogen#infect()

" Powerline
let g:powerline_pycmd = "py3"
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=255

" vim-javascript plugin
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Clipboard
set clipboard=unnamedplus

" Encoding
set encoding=utf-8
"set fileencoding=utf-8

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file 
command W w !sudo tee % > /dev/null

" WiLd menu
set wildmenu
set wildmode=longest,list,full

" Numbers 
set number
highlight LineNr ctermfg=grey

" Ignore case, be smart, highlight search and make it modern-browser like
set ignorecase
set smartcase
set hlsearch
set incsearch

" Opening braces will be closed automatically 
inoremap { {<CR><BS>}<Esc>ko
:inoremap ( ()<Esc>i
noremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap " ""<Esc>i
inoremap [ []<Esc>i

" Sublimetext indentation
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set autoindent
