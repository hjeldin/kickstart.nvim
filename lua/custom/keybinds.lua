-- remap navigation between splits with CTRL+[hjkl]
-- vim.keymap.set('n', '<c-H>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-L>', ':wincmd l<CR>')
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')

-- save file with CTRL+save
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<c-q>', ':bd<CR>')

-- prevent unwanted paste buffer fills from delete char
vim.keymap.set('n', 'x', '"_x')
