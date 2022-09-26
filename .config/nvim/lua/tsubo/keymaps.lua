-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
function smap(mode, lhs, rhs, opts)
    local options = { noremap = true, silent=true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
end

--
-- map("n", "", "<CR>")

-- Copy Paste --
map("v", "<c-c>", '"*y :let @+=@*<CR>')
map("n", "<c-p>", '"+P')

-- Better window navigation
map("n", "<m-h>", "<C-w>h")
map("n", "<m-j>", "<C-w>j")
map("n", "<m-k>", "<C-w>k")
map("n", "<m-l>", "<C-w>l")

-- I hate typing these
map("n", "H", "^")
map("n", "L", "$")
map("v", "H", "^")
map("v", "L", "$")
map("x", "H", "^")
map("x", "L", "$")
map("o", "H", "^")
map("o", "L", "$")

-- NvimTree --
map("n", "<m-e>", ":NvimTreeToggle<CR>")

-- Telescope --
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>")
map("n", "<leader>fg", "<cmd>Telescope git_branches<CR>")
map("n", "<leader>ft", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>fc", "<cmd>Telescope commands<CR>")

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Split --
map("n", "<m-s>", "<cmd>vsplit<CR>")
map("n", "<m-v>", "<cmd>split<CR>")

-- D without Yank --
map("n", "d", '"_d')
map("v", "d", '"_d')

-- Harpoon
-- Terminal commands
-- ueoa is first through fourth finger left hand home row.
-- This just means I can crush, with opposite hand, the 4 terminal positions
--
-- These functions are stored in harpoon.  A plugn that I am developing
map("n", "<leader>a", '<cmd>lua require("harpoon.mark").add_file()<CR>')
map("n", "<c-e>", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')

map("n", "<c-h>", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
map("n", "<c-t>", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
map("n", "<c-n>", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
map("n", "<c-s>", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')


