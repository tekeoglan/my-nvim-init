local u = require("utils")
local t, check_back_space = u.t, u.check_back_space

vim.g.coc_node_path = "C:/Program Files/nodejs/node.exe"
vim.g.coc_enable_locationlist = 1
vim.g.coc_global_extensions = {
  "coc-json", "coc-marketplace", "coc-prettier", "coc-snippets", "coc-syntax", "coc-tslint-plugin", "coc-tsserver",
  "coc-yank"
}

u.keymap("i", "<tab>", "coc#pum#visible() ? coc#pum#next(1) : '<tab>'", {noremap=true, silent = true , expr = true})
u.keymap("i", "<C-p>", "coc#pum#visible() ? coc#pum#prev(1) : '<Cp>'", {noremap=true, silent = true , expr = true})
u.keymap("i", "<cr>", "coc#pum#visible() ? coc#pum#confirm() : '<cr>'", {noremap=false, silent = true , expr = true})

u.keymap("i", "<c-space>", "coc#refresh()", {expr = true})

u.keymap("n", "gd", "<Plug>(coc-definition)", {noremap = false})
u.keymap("n", "gf", "<Plug>(coc-implementation)", {noremap = false})
u.keymap("n", "<C-g>f", ":vsplit<cr><Plug>(coc-implementation)", {noremap = false})
-- u.keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
u.keymap("n", "gr", "<Plug>(coc-references)", {noremap = false})
u.keymap("n", "K", ":call CocAction(\"doHover\")<CR>", {noremap = false})
u.keymap("n", "]q", "<Plug>(coc-diagnostic-next)", {noremap = false})
u.keymap("n", "[q", "<Plug>(coc-diagnostic-prev)", {noremap = false})
u.keymap("n", "<leader>w", "<Plug>(coc-codeaction)", {noremap = false})
u.keymap("v", "<leader>w", "<Plug>(coc-codeaction-selected)", {noremap = false})
u.keymap("n", "<leader>rn", "<Plug>(coc-rename)", {noremap = false})

-- Highlight the symbol and its references when holding the cursor.
vim.cmd([[autocmd CursorHold * silent call CocActionAsync('highlight')]])
