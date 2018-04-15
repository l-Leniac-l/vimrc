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
call plug#end()
call neomake#configure#automake('nrwi', 500)
let g:deoplete#enable_at_startup = 1
let g:molokai_original = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=8
colo molokai
syntax on
set number
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
set ts=2 sw=2 et

autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
