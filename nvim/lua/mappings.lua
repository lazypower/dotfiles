-- Alias builtin to keymap
-- keymap($mode, $keymap, $mapped_to, $options)
local keymap = vim.api.nvim_set_keymap


function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- normal mode
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- insert mode
function imap(shortcut, command)
  map('i', shortcut, command)
end

-- visual mode
function vmap(shortcut, command)
  map('v', shortcut, command)
end


-- Telescope bindings
nmap("<Leader>;", "<cmd>Telescope buffers<cr>")
nmap("<Leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
nmap("<Leader>gf", "<cmd>Telescope git_files<cr>")
nmap("<Leader>f", "<cmd>Telescope find_files<cr>")
nmap("<Leader>rg", "<cmd>Telescope live_grep<cr>")

-- NVimTree drawer
nmap("<Leader>t", "<cmd>NvimTreeToggle<cr>")

-- LSP bindings
nmap("<silent>gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
nmap("<silent>gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
nmap("<silent>gr", "<cmd>lua vim.lsp.buf.references()<cr>")
nmap("<silent>gs", "<cmd>Lspsaga signature_help<cr>")

