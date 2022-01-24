" vimplug
call plug#begin()
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer', { 'branch': 'main' }
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'ntbbloodbath/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
	Plug 'kyazdani42/nvim-tree.lua'
    Plug 'NLKNguyen/papercolor-theme'
	Plug 'hashivim/vim-terraform'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'ellisonleao/glow.nvim'
call plug#end()

colorscheme PaperColor

" Basic settings
syntax on
set number
set incsearch
set nocompatible
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set hlsearch

let g:mapleader=","

" >> Telescope bindings
nnoremap <Leader>pp :lua require'telescope.builtin'.builtin{}<CR>
" most recently used files
nnoremap <Leader>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>
" find buffer
nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>
" find in current buffer
nnoremap <Leader>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
" bookmarks
nnoremap <Leader>' <cmd>lua require'telescope.builtin'.marks{}<CR>
" git files
nnoremap <Leader>gf <cmd>lua require'telescope.builtin'.git_files{}<CR>
" all files
nnoremap <Leader>f <cmd>lua require'telescope.builtin'.find_files{}<CR>
" ripgrep like grep through dir
nnoremap <Leader>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>
nnoremap <Leader>t <cmd>:NvimTreeToggle<CR>



" >> Lsp key bindings
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>

" Set spellcheck lang
set spelllang=en
set spellsuggest=best,9

" Enable spellcheck on markdown
augroup markdownSpell
  autocmd FileType markdown setlocal spell
  autocmd BufRead,BufNewFile *.md setlocal spell
augroup END

augroup gitcommitSpell
  autocmd FileType gitcommit setlocal spell
augroup END

" Lang-Server LUA configuration
" Complemented by the files found in lua/*.lua

"require("completion")

lua <<EOF
require("lsp")
require("statusbar")
require("treesitter")
require'nvim-tree'.setup{}
require('gitsigns').setup()
EOF
