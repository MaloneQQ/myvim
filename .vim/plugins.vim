set nocompatible              " be iMproved, required
filetype off                  " required



" 设置Gundo快捷键为F5
nnoremap <F5> :GundoToggle<CR>
""""""""""""""""""""""""""""""""
"=> Gundo 设置保存路径
" 重新打开文件后原来撤销继续使用
""""""""""""""""""""""""""""""""
try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
  catch
endtry 

" 有道翻译快捷键（ 安装 Requests：
" #sudo apt-get install python-setuptools
" #sudo easy_install pip
" #sudo pip install requests）
" Ctrl+t 翻译选中的单词 
vnoremap <silent> <C-T> <Esc>:Ydv<CR>
nnoremap <silent> <C-T> <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Gundo 可视化撤销列表 
Plugin 'git://github.com/sjl/gundo.vim.git' 

" 有道翻译
Plugin 'git://github.com/ianva/vim-youdao-translater.git' 

" 多重光标选取功能
" Ctrl+n 选中光标下的单词，再次Ctrl+n 选中下一个相同单词
" Ctrl+p 往回选一个
" Ctrl+x 跳过下一个相同单词
" Esc退出选中
" c 选中单词后修改  
Plugin 'terryma/vim-multiple-cursors'

" colorscheme
" 需要将colorscheme中的vim文件复制到～/.vim/colors中 
Plugin 'flazz/vim-colorschemes'

" 处理成对符号
" cs"'  将双引号替换为单引号
" cs'<q>  将单引号替换为标签
" cst"   返回初始的双引号
" ds"    删除双引号
" ys"    添加双引号
" ysiw] 为单词添加[] 
Plugin 'tpope/vim-surround'

" NERD Tree 文件浏览器
" i , s , t 在分隔窗口或者在新标签页打开 
Plugin 'git://github.com/scrooloose/nerdtree.git' 

" NERDtree-tab 多个tab共用NERD Tree窗口
" :NERDTreeTabsToggle打开或关闭所有窗口
" :NERDTreeTabsOpen
" :NERDTreeTabsClose
" :NERDTreeTabsFind 
Plugin 'git://github.com/jistr/vim-nerdtree-tabs.git'

" NERDtree-git 文件git状态显示
" ✭  /   *  : Untracked
" ✹  /   ~  : Modified in the working tree
" ✚  /   +  : Staged in the index (Exclude Renamed status)
" ➜  /   »  : Renamed
" ═  /   =  : Unmerged
" ✖  /   -  : Deleted (This indicator can't be shown, as NERDTree doesn't
" display deleted files. I have no prefect idea to solve this problem
" currently.)
" ✗  /   ×  : Dirty (Only for directory)
" ✔  /   ø  : Clean (Only for root directory)
" ]c 和 [c 在有状态的文件之间跳转
Plugin 'git://github.com/Xuyuanp/git-nerdtree.git' 

" 语法检查
" 设置文档https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
Plugin 'git://github.com/scrooloose/syntastic.git' 

" 重复上一个动作（vim默认的./;/,也都可以重复动作）
" 空格键：重复上个动作，Shift+空格：返回上个动作的结果
Plugin 'git://github.com/spiiph/vim-space.git' 

" 重复上一个插件操作
Plugin 'git://github.com/tpope/vim-repeat.git'

" 平滑滚动，替换vim默认的Ctrl+D/U/F/B的功能
Plugin 'git://github.com/yonchu/accelerated-smooth-scroll.git' 

" 自动补全
" 该插件与 neocomplete插件冲突，暂时不用。
" Plugin 'git://github.com/Valloric/YouCompleteMe.git' 

" 自动补全
" 需要安装vim-nox/vim-gtk/vim-gnome/vim-athena之一，更具桌面环境选择
" vim中输入 :echo has("lua") 返回结果1则可以安装了
" 官方推荐配置：https://github.com/Shougo/neocomplete.vim最后部分，太长了暂时先不加入
Plugin 'git://github.com/Shougo/neocomplete.vim.git'
Plugin 'git://github.com/ervandew/supertab.git'

" 代码搜索
" sudo apt-get install silversearcher-ag
Plugin 'git://github.com/ggreer/the_silver_searcher.git'
Plugin 'git://github.com/petdance/ack2.git'
Plugin 'git://github.com/dyng/ctrlsf.vim.git'

" 命令行补全
Plugin 'git://github.com/vim-scripts/cmdline-completion.git'

" 显示git diff状态
Plugin 'git://github.com/airblade/vim-gitgutter.git'

" 缩进显示，默认的快捷键是<Leader>ig，开关插件。
" 默认开启该插件let g:indent_guides_enable_on_vim_startup = 1
Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'

" molokai colorscheme
" let g:molokai_original = 1
" let g:rehash256 = 1
Plugin 'git://github.com/tomasr/molokai.git' 

" 全屏写作模式
" :Goyo
" g:goyo_width (default: 80)
" g:goyo_margin_top (default: 4)
" g:goyo_margin_bottom (default: 4)
" g:goyo_linenr (default: 0)
" g:goyo_callbacks ([before_funcref, after_funcref])
Plugin 'junegunn/goyo.vim'


call vundle#end()            " required
filetype plugin indent on    " required
