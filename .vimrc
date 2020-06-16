"colorscheme badwolf
" Indent
set autoindent
set softtabstop=4
set tabstop=4
set expandtab
autocmd FileType make setlocal noexpandtab

" Search
set incsearch
set hlsearch
set ignorecase

" Tabs
:au BufAdd,BufNewFile,BufRead * nested tab sball
set splitbelow 
set splitright

set laststatus=2 " Always show a status bar
set scrolloff=3 " Keep n lines when scrolling
set showcmd " show command in bar
set number " show line numbers
set relativenumber " relative line numbers
set wildmenu " visual autocomplete for command menu
set tabpagemax=10

function Xsudo()
    :w !sudo tee %
    :q!
endfunction

command Wsudo :w !sudo tee %
command Xsudo exec Xsudo()
