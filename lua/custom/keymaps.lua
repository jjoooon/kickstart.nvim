-- [[ Custom keymaps ]]
vim.keymap.set('n', '<C-h>', '<C-w>h' )
vim.keymap.set('n', '<C-l>', '<C-w>l' )
vim.keymap.set('n', '<C-j>', '<C-w>j' )
vim.keymap.set('n', '<C-k>', '<C-w>k' )

vim.keymap.set('i', '<C-b>', '<Esc>^i')
vim.keymap.set('i', '<C-e>', '<End>')
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-l>', '<Right>' )
vim.keymap.set('i', '<C-j>', '<Down>' )
vim.keymap.set('i', '<C-k>', '<Up>')

-- oil.nvim
vim.keymap.set('n', '<leader>o', function() require('oil').toggle_float() end)

-- harpoon
vim.keymap.set('n', '<leader>hh', function() require('harpoon.ui').toggle_quick_menu() end)
vim.keymap.set('n', '<leader>hm', function() require('harpoon.mark').add_file() end)
