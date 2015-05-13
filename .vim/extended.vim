"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
" ,ev    #编辑~/.vimrc
" ,eb   #编辑~/.vim/base.vim
" ,ep   #编辑~/.vim/plugins.vim
" ,ee   #编辑~/.vim/extended.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set mapleader
let mapleader = ","
map <leader>ev :e ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc
map <leader>eb :e ~/.vim/base.vim<cr>
map <leader>ep :e ~/.vim/plugins.vim<cr>
map <leader>ee :e ~/.vim/extended.vim<cr>
autocmd! bufwritepost ~/.vim/*.vim source % 

inoremap qq <ESC>    "Esc重映射为qq
