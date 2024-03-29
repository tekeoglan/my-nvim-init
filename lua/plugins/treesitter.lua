local utils = require("utils")

require'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"javascript",
		"typescript",
		"regex",
		"tsx",
		"json",
		"lua",
		"solidity",
		"python"
	},
	incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
highlight = {
    enable = true,
	},
}

utils.keymap("n", "L", ":TSHighlightCapturesUnderCursor<CR>")
