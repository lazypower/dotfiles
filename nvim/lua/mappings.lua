-- Alias builtin to keymap
-- keymap($mode, $keymap, $mapped_to, $options)
local keymap = vim.api.nvim_set_keymap


function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

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

