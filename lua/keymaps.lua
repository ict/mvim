-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '_', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- dk: My keymaps from old vimrc
vim.keymap.set('i', 'jj', '<ESC>', { desc = 'Easy exit from insert mode' })
vim.keymap.set('n', '<leader>x', ':%y+<CR>', { desc = 'Copy buffer to clipboard' })

vim.keymap.set('n', '<leader>p', function()
  vim.cmd 'normal! o'
  vim.cmd 'normal! "+p'
  vim.cmd 'normal! `[v`]=' -- Select and format the pasted text
end, { desc = 'Paste from system clipboard and format' })

vim.keymap.set('i', '<F1>', '<C-R>+', { desc = 'Paste from clipboard in insert mode', silent = true })

vim.keymap.set('n', '<F2>', ':bd<CR>', { desc = 'Destroy current buffer', silent = true })

vim.keymap.set('n', 'Q', 'gqap', { desc = 'Reflow current paragraph' })

vim.keymap.set('n', '<leader>o', ':only<CR>', { desc = 'Only show current buffer' })
vim.keymap.set('n', '<leader>T', ':tab sball<CR>', { desc = 'Make tabs out of all buffers' })

vim.keymap.set('n', '<leader>cd', ':lcd %:h<CR>', { desc = "Change ldirectory to current file's location" })

vim.keymap.set('c', 'w!!', ':w !sudo tee >/dev/null %<CR>', { noremap = true, silent = true, desc = 'Save file with sudo' })
