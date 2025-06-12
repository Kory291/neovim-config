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
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.8'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/mfussenegger/nvim-ansible'
Plug 'yaegassy/coc-htmldjango', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" add or override pattern matches for filetypes
" these take precedence over the file extensions

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.feature$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.cucumber$'] = ''

" Vim-telescope config
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

filetype plugin on
filetype plugin indent on

lua vim.lsp.enable('pyright')
lua vim.lsp.enable('bashls')
lua vim.lsp.enable('clangd')
lua vim.lsp.enable('ansiblels')

colorscheme catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

let g:coc_filetype_map = {'yaml.ansible': 'ansible'}

lua require'nvim-treesitter.configs'.setup{highlight={enable=true}} 
