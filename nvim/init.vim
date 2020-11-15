call plug#begin('/Users/arnaud/.local/share/nvim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neoclide/coc.nvim'
  Plug 'altercation/vim-colors-solarized'

  " Git
  Plug 'tpope/vim-fugitive'

  " Indentation lines
  Plug 'Yggdroot/indentLine'

  " Syntax highlighting for jsx/tsx
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  
  " Formatting
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set splitright
set clipboard=unnamedplus

" Syntax highlighting and color
syntax enable
set background=light
colorscheme solarized
highlight Comment cterm=italic

" Leader mapping
nnoremap <Space> <Nop>
let mapleader = "\<Space>"
"
" indentLine
let g:indentLine_char = '▏'

" FZF
let $FZF_DEFAULT_COMMAND='fd --type f'
let $FZF_DEFAULT_OPTS .= ' --reverse --preview "highlight"'
nnoremap <silent> <Leader>o :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>fh :History<CR>

" Configure defx.
nnoremap <silent> <Leader>ft :Defx `expand('%:p:h')`
    \ -search=`expand('%:p')`
    \ -show-ignored-files
    \ -split=vertical
    \ -winwidth=45
    \ -direction=topleft<CR>

" Prettier
nmap <Leader>p <Plug>(Prettier)

" Coc
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
