set nocompatible
set t_Co=256" Explicitly tell Vim that the terminal supports 256 colors


set runtimepath=/etc/vim/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/etc/vim/.vim/after

syntax enable

"------------ VUNDLE ----------- 

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=/etc/vim/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'guns/xterm-color-table.vim'


"----renkli theme-----
Bundle 'flazz/vim-colorschemes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-colorscheme-switcher'
"------------- easy Motion -------
Bundle 'Lokaltog/vim-easymotion'

"------------- Powerline ----------
Bundle 'Lokaltog/vim-powerline'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs


" ------------ NERDTREE ----------- 

Bundle 'scrooloose/nerdtree'
map <F4> :NERDTreeToggle<CR>


"---------- EMMET ------------------
Bundle 'mattn/emmet-vim'

"-----command t -------
Bundle 'wincent/Command-T'


"----------- SNIPMATE --------------
Bundle 'msanders/snipmate.vim'


"----------- Omni Complation --------------
"Bundle 'shawncplus/phpcomplete.vim'

"-----------github highlight --------------
Bundle 'endel/vim-github-colorscheme'

"-----------PHP-QA -----------------------
"Bundle 'joonty/vim-phpqa.git'

"------------ php documentor -------------
"Bundle 'tobyS/pdv'
"autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
"autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
"autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 

"let g:pdv_template_dir = $HOME ."/etc/vim/.vim/bundle/pdv/templates_snip"
"nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>


"--------------------

filetype plugin on

