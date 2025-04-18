:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop
:set mouse=a
:set encoding=UTF-8

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jaredgorski/spacecamp'
Plug 'lervag/vimtex'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.8'}

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:vimtex_view_general_viewer = '{$SumatraPDF}'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_compiler_method = "latexmk"

filetype plugin on
syntax enable

colorscheme spacecamp
