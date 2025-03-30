local neogit = require('neogit')
 
vim.keymap.set('n', '<leader>gi', function() neogit.open() end, { desc = 'Neogit' })
