local mapper = require("utl/mapper")
local map = mapper({ noremap = true, silent = true })

map("n", "<leader>v", [[<CMD>vs<CR>]], "Vertical Split")

map("n", "<leader>e", [[<CMD>e<CR>]], "Edit")
map("n", "<leader>q", [[<CMD>q<CR>]], "Quit")
map("n", "<leader>Q", [[<CMD>qa!<CR>]], "Force quit")
map("n", "<leader>w", [[<CMD>w<CR>]], "Write")

-- telescope remappings
-- terminal
map("n", "<leader>t", function()
	snacks.terminal()
end, "toggle terminal")

map("t", "<c-a>", function()
	snacks.terminal.toggle()
end, "hide terminal")

map("n", "<leader>g", function()
	snacks.terminal.toggle("go run .")
end)

