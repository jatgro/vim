set hidden
set guifont=MesloLGS\ Nerd\ Font:h11
set splitbelow
set encoding=utf8
set relativenumber number

"setting for navigating in between sentences and paragraphs
set nocompatible
" highlight the searched phrase in the file
set hlsearch

"mapping for no highlight feature to remove highlight after search
nnoremap <esc><esc> :noh<return><esc>

set t_ti= t_te= " show results from terminal commands within vim!

"making enter key work 
nmap <kEnter> <CR>
nmap <S-kEnter> <S-CR>

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } } 
Plug 'ryanoasis/vim-devicons'
Plug 'azakus/vim-webcomponents'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cocopon/pgmnt.vim' " iceberg theme
Plug 'dmdque/solidity.vim'
Plug 'tpope/vim-surround'
Plug 'sainnhe/edge'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'evanleck/vim-svelte'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" setting one half theme 
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark

"copy to clipboard
set clipboard=unnamed
set autoindent
set backspace=indent,eol,start  " more powerful backspacing

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" This mapping breaks the normal behavior of the enter-key
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" shortcuts for splits
noremap <leader>v :vsplit<CR>
noremap <leader>h :split<CR>

" mapping for splitting windows in NERDTree

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" NERDTree Mappings and settings 
let NERDTreeShowHidden=1

" toggle the NERDTree
nmap <silent> <C-b> :NERDTreeToggle <CR>
" view the current buffer in NERDTree
 map <leader>r :NERDTreeFind<cr>


" disable the arrow keys
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

augroup quickfix
  autocmd!
  autocmd QuickFixCmdPost make nested copen
augroup END

" ctrl-p plugin settings 
" setting  the local working directory as the searching directory
let g:ctrlp_working_path_mode = 0 

" coc GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
