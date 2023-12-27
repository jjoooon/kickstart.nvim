-- [[ Custom keymaps ]]
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<Esc>', ':noh<CR>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<A-j>', '<CMD>m+<CR>==')
vim.keymap.set('n', '<A-k>', '<CMD>m-2<CR>==')
vim.keymap.set('n', '<C-A-h>', '<CMD>vertical resize -6<CR>')
vim.keymap.set('n', '<C-A-l>', '<CMD>vertical resize +6<CR>')
vim.keymap.set('n', '<C-A-j>', '<CMD>resize +3<CR>')
vim.keymap.set('n', '<C-A-k>', '<CMD>resize -3<CR>')
vim.keymap.set('n', '<C-A-n>', '<C-w>=')

vim.keymap.set('i', '<C-b>', '<Esc>^i')
vim.keymap.set('i', '<C-e>', '<End>')
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')

-- oil.nvim
vim.keymap.set('n', '<leader>o', function() require('oil').toggle_float() end)

-- harpoon
vim.keymap.set('n', '<leader>hh', function() require('harpoon.ui').toggle_quick_menu() end)
vim.keymap.set('n', '<leader>hm', function() require('harpoon.mark').add_file() end)
