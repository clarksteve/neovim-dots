local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('i', 'jk', '<ESC>', opts)
map('n', '<C-f>', ':NvimTreeToggle<CR>', opts)
