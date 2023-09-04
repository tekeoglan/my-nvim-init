require("nvim-tree").setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    debounce_delay = 100,
  },
}

local utils = require("utils")

vim.g.nvim_tree_indent_markers = 1

vim.g.nvim_tree_show_icons = {git = 0, folders = 1, files = 1}

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
  folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}

utils.keymap("n", "<C-b>", ":NvimTreeToggle<cr>")
