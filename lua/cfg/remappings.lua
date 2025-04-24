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
	Snacks.terminal()
end, "Toggle Terminal")

map("t", "<C-a>", function()
	Snacks.terminal.toggle()
end, "Hide Terminal")

map("n", "<leader>g", function()
	Snacks.terminal.toggle("go run .")
end)

-- harpoon
local harpoon = require("harpoon")
harpoon:setup()

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

map("n", "<leader>a", function() harpoon:list():add() end, "Add mark")
map("n", "<Space><Space>", function()	toggle_telescope(harpoon:list()) end, "Open harpoon window")
map("n", "<C-h>", function() harpoon:list():select(1) end, "Select first mark")
map("n", "<C-j>", function() harpoon:list():select(2) end, "Select second mark")
map("n", "<C-k>", function() harpoon:list():select(3) end, "Select third mark")
map("n", "<C-l>", function() harpoon:list():select(4) end, "Select fourth mark")
map("n", "<C-p>", function() harpoon:list():prev() end, "Select prev mark")
map("n", "<C-n>", function() harpoon:list():next() end, "Select next mark")
map("n", "<leader>c", function() harpoon:list():clear() end, "Clear marks")



