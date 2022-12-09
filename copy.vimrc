syntax on
set number
filetype plugin indent on
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim'
call plug#end ()
:colo birds_of_paradise

" use <tab> for trigger completion and navigate to the next complete item complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  retun !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
     \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<Tab>" :
     \ coc#refresh()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
