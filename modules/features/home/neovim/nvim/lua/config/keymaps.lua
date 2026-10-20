vim.g.mapleader = " "
vim.g.localleader = " "

-- relaces selecter text WITHOUT losing what you yanked
vim.keymap.set("x", "p", [["_dP]], { noremap = true, silent = true, desc = "Paste over selection without losing yanked text"})

-- Delete text without saving it to any register
vim.keymap.set({ "n", "v" }, "x", '"_x', {  noremap = true; silent = true, desc = "Delete withou saving" })

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { silent = true, desc = "Clear search highlighting" })

-- moving highlightet text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "moves lines up in visual selection" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "moves lines down in visual selection" })

vim.keymap.set("v", "<", "<gv", { silent = true, desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { silent = true, desc = "Unindent and keep selection" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true, desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true, desc = "move down in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { silent = true, desc = "Next seach result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { silent = true, desc = "Previous search result cursor centered" })

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor globally" })
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })

vim.keymap.set("n", "<leader>R", "<cmd>restart<cr>", { desc = "Restart config :restart)" })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Change to left Window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Change to down Window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Change to up Window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Change to right Window' })
