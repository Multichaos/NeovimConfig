local mapper = function(mode, key, result)
    vim.keymap.set(mode, key, result, { noremap = true, silent = true })
end

--Telescope mappings
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

-- Tab mappings
mapper("n", "<Leader>tn", ":tabNext<CR>")
mapper("n", "<Leader>tp", ":tabPrev<CR>")
mapper("n", "<Leader>tc", ":tabclose<CR>")

-- Lspsaga mappings
mapper("n", "gr", "<cmd>Lspsaga rename<CR>")
mapper("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
mapper("n", "<Leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")
mapper("n", "K", "<cmd>Lspsaga hover_doc<CR>")
mapper({"n", "t"}, "<Leader>ot", "<cmd>Lspsaga term_toggle<CR>")
mapper("n", "<Leader>og", "<cmd>Lspsaga open_floaterm('lazygit')<CR>")

-- nvim-tree mappings
mapper("n", "<Leader>tt", "<cmd>NvimTreeToggle<CR>")
mapper("n", "<Leader>tf", "<cmd>NvimTreeFocus<CR>")
mapper("n", "<Leader>to", "<cmd>NvimTreeFindFile<CR>")
mapper("n", "<Leader>tc", "<cmd>NvimTreeCollapse<CR>")

