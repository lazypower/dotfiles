-- general configuraiton
vim.o.number = true
vim.o.incsearch = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.hlsearch = true
-- Globals
vim.g.nocompatible = true
vim.g.mapleader = ","

-- Buffers
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

-- Spellcheck
vim.g.spellang = "en"
vim.g.spellsuggest = "best,9"
vim.cmd([[
augroup markdownSpell
  autocmd FileType markdown setlocal spell
  autocmd BufRead,BufNewFile *.md setlocal spell
augroup END

augroup gitcommitSpell
  autocmd FileType gitcommit setlocal spell
augroup END
]])


-- vim.cmd('colorscheme PaperColor')
vim.g.colors_name = "PaperColor"
