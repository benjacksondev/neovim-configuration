local which_key = require("which-key")

return function(mapper_opts)
	return function(mode, key, cmd, desc)
		vim.keymap.set(mode, key, cmd, mapper_opts)
		if desc then
			which_key.add({ { key, desc = desc } })
		end
	end
end
