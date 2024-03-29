local utils = require("utils")
local map = utils.keymap

vim.g.mapleader = ","

map("i", "jj", "<Esc>")
map("t", "jj", [[<C-\><C-n>]])


map("n", "<leader><space>", ":nohlsearch<cr>")
map("n", "<leader><leader>", "<C-^>")

map("n", ";", ":")
map("n", "<Enter>", "o<Esc>")
map("n", "<space>", "i<space><C-c>l")

-- Better split switching
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-L>", "<C-W>l")

-- easy splits | for vertical _ for horizontal
map("n", "<bar>", ":vsp<CR>")
map("n", "_", [[Hmx``<C-w>szz<C-w><C-p>`x``<C-w><C-p>]])

-- tabs
map("n", "tt", ":tabe<cr>:Startify<cr>")
map("n", "[t", ":tabprev<cr>")
map("n", "t[", ":tabprev<cr>")
map("n", "]t", ":tabnext<cr>")
map("n", "t]", ":tabnext<cr>")
map("n", "[T", ":tabfirst<cr>")
map("n", "]T", ":tablast<cr>")

map("v", "<leader>y", "\"*yy")
map("n", "<leader>p", "\"*p")
map("n", "<leader>qc", ":call setqflist([], 'r') <CR>")
map("n", "<leader>qf", ":cfdo | :bd <CR>")
