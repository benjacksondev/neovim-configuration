local mapper = require('utl/mapper')

local map = mapper({ noremap = true, silent = true })

map('n', '<leader>v', [[<CMD>vs<CR>]], 'Vertical Split')

map('n', '<leader>e', [[<CMD>e<CR>]], 'Edit')
map('n', '<leader>q', [[<CMD>q<CR>]], 'Quit')
map('n', '<leader>Q', [[<CMD>qa!<CR>]], 'Force quit')
map('n', '<leader>w', [[<CMD>w<CR>]], 'Write')

-- telescope remappings
local builtin = require('telescope.builtin')

map('n', '<leader>ff', builtin.find_files, 'Telescope find files')
map('n', '<leader>fg', builtin.live_grep, 'Telescope live grep')
map('n', '<leader>fb', builtin.buffers, 'Telescope buffers')
map('n', '<leader>fh', builtin.help_tags, 'Telescope help tags')

-- terminal
map('n', '<leader>t', function() Snacks.terminal() end, 'Toggle Terminal')

