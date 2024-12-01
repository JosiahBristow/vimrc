set relativenumber 

set showmode
set showcmd
set showmatch

set tabstop=4

set softtabstop=4
set autoindent
set expandtab
set shiftwidth=4

set cursorline
set ruler

set hlsearch

set ignorecase
set smartcase

set autochdir

set wildmenu

inoremap jk <esc>
nnoremap ; :

set omnifunc=syntaxcomplete#Complete
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i
inoremap ` ``<esc>i

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap w= :vertical resize +5<CR>
nmap w- :vertical resize -5<CR>

syntax on

let Tlist_Auto_Open=1

filetype plugin indent on 
set completeopt=longest,menu

autocmd bufnewfile *.sh, *.py call SetTitle()
func SetTitle()
    if &filetype == "py"
        call setline(1, "\#!/usr/bin/python3")
        call setline(2, "\# -*- coding=utf-8 -*-")
        call setline(3, "\"\"\"")
        call setline(4, "\    @Author: Josiah Benedict Bristow")
        call setline(5, "\    @E-mail: w231726@163.com")
        call setline(6, "\    @File Name: ".expand("%"))
        call setline(7, "\    @Create Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call setline(8, "\    @Description: ")
        call setline(9, "")
        call setline(10, "\"\"\"")
        normal G
        normal o 
        normal o
    elseif &filetype == "sh"
        call setline(1, "\#!/bin/bash")
        call setline(2, "\# -*- coding=utf-8 -*-")
        call setline(3, "\####################################################")
        call setline(4, "\    @Author: Josiah Benedict Bristow")
        call setline(5, "\    @E-mail: w231726@163.com")
        call setline(6, "\    @File Name: ".expand("%"))
        call setline(7, "\    @Create Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call setline(8, "\    @Description: ")
        call setline(9, "")
        call setline(3, "\####################################################")
        normal G
        normal o 
        normal o
    endif
endfunc
