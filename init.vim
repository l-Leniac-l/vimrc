call plug#begin('~/.local/share/nvim/plugged')
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tomasr/molokai'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kien/rainbow_parentheses.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'vim-scripts/vim-auto-save'
call plug#end()
call neomake#configure#automake('nrwi', 500)

" Deoplete
let g:deoplete#enable_at_startup = 1

" Molokai Theme
let g:molokai_original = 1
colo molokai
syntax on

" Identation guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=8

" Auto save
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" Editor options
set number
set ts=2 sw=2 et

" NERDTree
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

" Raibow Parentheses
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

" Vue.js files
au BufRead,BufNewFile *.vue set ft=html
