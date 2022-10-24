set hidden
set guifont=MesloLGS\ Nerd\ Font:h11
set splitbelow
set encoding=utf8
set relativenumber number


call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } } 
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dmdque/solidity.vim'
call plug#end()


"copy to clipboard
set clipboard=unnamed

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
let NERDTreeShowHidden=1

" toggle the NERDTree
nmap <silent> <C-b> :NERDTreeToggle <CR>

" disable the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>



