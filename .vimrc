" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" 设置主题
":colorscheme molokai

" 检测文件类型并开启对应插件
filetype on
filetype plugin on
filetype indent on

" 开启语法高亮
syntax on

" 开启行数显示,并高亮当前所在行
set number
set cursorline

" Tab 设置为 4 空格
set tabstop=4

" 关闭自动换行
set nowrap

" 搜索中关键词高亮
set incsearch

" 搜索时忽略大小写,当搜索大写时自动设置为考虑大小写
set ignorecase
set smartcase

" 搜索高亮
set hlsearch

" 自动补全
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
