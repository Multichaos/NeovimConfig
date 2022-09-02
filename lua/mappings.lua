local mapper = function(mode, key, result)
    vim.keymap.set(mode, key, result, { noremap = true, silent = true })
end

--Telescope Mappings
local telescope_builtin = require("telescope.builtin")
mapper("n", "<Leader>ff", telescope_builtin.find_files) 
mapper("n", "<Leader>fb", telescope_builtin.buffers) 
mapper("n", "<Leader>fl", telescope_builtin.current_buffer_fuzzy_find) 
mapper("n", "<Leader>gg", telescope_builtin.live_grep) 
mapper("n", "<Leader>fg", telescope_builtin.lsp_references) 

--Buffer / Bufferline mappings
mapper("n", "<Tab>", ":BufferLineCycleNext<CR>")
mapper("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
mapper("n", "<Leader>bd", ":bd<CR>")
