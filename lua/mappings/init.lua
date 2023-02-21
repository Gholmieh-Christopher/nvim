--< Written by: Christopher Gholmieh
--< Variables:
local map = vim.api.nvim_set_keymap

local opts = {
    noremap = true,
    silent = true,
}

vim.g.mapleader = " "

--< Main:
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>f", ":Telescope<CR>", opts)

map("n", "<leader>c", [[:lua require("neogen").generate()<CR>]], opts)

map("n", "<leader>r", ":BufferPrevious<CR>", opts)
map("n", "<leader>t", ":BufferNext<CR>", opts)

