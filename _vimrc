set nocompatible               " be iMproved
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
 
" original repos on github<br>Bundle 'mattn/zencoding-vim'
 
" vim-scripts repos
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "scrooloose/nerdtree"
Bundle "ervandew/supertab"
Bundle "taglist.vim"


" active snippets
let g:snippets_dir = "C:\Documents and Settings\FUBON\.vim\bundle\vim-snippets"

function Check_Perl_Syntax()
    :write
    :w !perl -c %
endfunction

filetype plugin indent on
set completeopt=longest,menu
set wildmenu
" hot key setting
"autocmd Bufread,BufNewFile *.py map <buffer> <F9> :w !%<CR>
"autocmd Bufread,BufNewFile *.pl map <buffer> <F9> :w !%<CR>
autocmd FileType perl map ck :exec Check_Perl_Syntax()<cr>
autocmd Bufread,BufNewFile *.bat set nobackup
autocmd Bufread,BufNewFile *.sql set nobackup
set tabstop=4
set shiftwidth=4
set expandtab
"不區分大小寫
"set ignorecase
set cursorcolumn
set cursorline
set incsearch
set number
"set relativenumber


"設定檔案編碼清單
"set fencs=utf-8,big5,gbk,utf-16le
"檔案編碼
"set fenc=utf-8
"內部編碼
"set enc=utf-8
"terminal 編碼
"set tenc=big5
"gvim menu 編碼
"if has('gui')
"    set langmenu=zh_TW.utf-8
"    source $VIMRUNTIME/delmenu.vim
"    source $VIMRUNTIME/menu.vim
"endif
"message  encoding 編碼
"language message  zh_TW.utf-8


"set nowrap
autocmd FileType python retab
autocmd FileType perl retab
autocmd Bufread,BufNewFile *.tmp set nobackup
autocmd Bufread,BufNewFile *.buf set nobackup

"Calendar setting
let g:calendar_diary="D:\\Fubon\\桌面\\Document\\Calendar"
map cal :Calendar<cr>

" text to hex
map <C-h>h :%!xxd<CR>
" hex to text
map <C-h>r :%!xxd -r<CR>
" Trigger NERDTree
map <F4> :NERDTreeToggle<CR>
map dir :NERDTreeToggle<CR>
map ls :NERDTreeToggle<CR>
map tls :Tlist<CR>

map <C-,> <C-W><
map <C-.> <C-W>>

"map <C-=> gg=G
map == mmgg=G'm

"map <C-Q> :q!<CR>

map <C-;> :Tabularize /=<CR>

imap <F2> <C-R>=strftime("Modify by Cruise at %c")<CR>

" Autodetect multiple encodings setting
map enc :FencAutoDetect<CR>
map encv :FencView<CR>

set listchars=eol:
set list

" open file in splite windows
map gf :vsp <cfile><CR>
