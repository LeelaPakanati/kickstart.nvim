vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', 'H', ':bp<CR>')
map('n', 'L', ':bn<CR>')

map('n', 'Y', 'y$')
map('n', 'C', 'c$')
map('n', 'D', 'd$')

map('n', '<leader>w', ':w!<CR>')
map('n', '<leader>Q', ':qa!<CR>')
map('n', '<leader>x', ':w<CR>:bd<CR>')
map('n', '<leader>q', ':bd<CR>')
