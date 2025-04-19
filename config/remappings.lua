-- extra up to mapper function into utils..
local which_key = require('which-key')

local mapper = function(mapper_opts) 
  return function(mode, key, cmd, desc) 
    vim.keymap.set(mode, key, cmd, mapper_opts)
    if desc then
      which_key.add({ { key, desc = desc } })
    end
  end
end

local map = mapper({})

map('n', '<leader>v', [[<CMD>vs<CR>]], 'Vertical Split')

map('n', '<leader>e', [[<CMD>e<CR>]], 'Edit')
map('n', '<leader>q', [[<CMD>q<CR>]], 'Quit')
map('n', '<leader>Q', [[<CMD>qa!<CR>]], 'Force quit')
map('n', '<leader>w', [[<CMD>w<CR>]], 'Write')

