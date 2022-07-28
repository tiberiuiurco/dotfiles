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
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--
-- map("n", "", "<CR>")

-- Copy Paste --
smap("v", "<c-c>", '"*y :let @+=@*<CR>')
smap("n", "<c-p>", '"+P')

-- Tabs --
map("n", "<m-t>", ":tabnew %<CR>")
map("n", "<m-y>", ":tabclose<CR>")
map("n", "<m-\\>", ":tabonly<CR>")

-- Buffers --
map("n", "L", ":bnext<CR>")
map("n", "H", ":bprevious<CR>")

-- Normal --
-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- I hate typing these
-- map("n", "H", "^")
-- map("n", "L", "$")
-- map("v", "H", "^")
-- map("v", "L", "$")
-- map("x", "H", "^")
-- map("x", "L", "$")
-- map("o", "H", "^")
-- map("o", "L", "$")

-- Better window navigation
map("n", "<m-h>", "<C-w>h")
map("n", "<m-j>", "<C-w>j")
map("n", "<m-k>", "<C-w>k")
map("n", "<m-l>", "<C-w>l")

-- Insert --
map("i", "jk", "<ESC>")

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<Leader>a", ":GitBlameToggle<CR>")
map("n", "Q", "<cmd>Bdelete!<CR>")

-- Telescope --
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>")
map("n", "<leader>fg", "<cmd>Telescope git_branches<CR>")
map("n", "<leader>ft", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>fc", "<cmd>Telescope commands<CR>")

-- Split --
map("n", "<m-s>", "<cmd>vsplit<CR>")
map("n", "<m-v>", "<cmd>split<CR>")

-- NvimTree --
map("n", "<m-e>", ":NvimTreeToggle<CR>")
