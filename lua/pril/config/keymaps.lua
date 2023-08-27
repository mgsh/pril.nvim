-- save/quit
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set("n", "<C-q>", "<cmd>qa<cr>", { desc = "Quit all" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- tab navigation
vim.keymap.set("n", "<leader>l", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>w", "<cmd>bdelete<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>h", "<cmd>bprevious<cr>", { desc = "Previous buffer" })

-- qol improvements
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-e>", "<esc>A")
vim.keymap.set("i", "<C-a>", "<esc>I")
vim.keymap.set("i", "<C-b>", "<esc>i")
vim.keymap.set("i", "<C-f>", "<esc>la")
vim.keymap.set("i", "<C-n>", "<esc>ja")
vim.keymap.set("i", "<C-p>", "<esc>ka")
vim.keymap.set({ "n", "v", "o" }, ";", ":")
vim.keymap.set({ "n", "v", "o" }, ";;", ";", { remap = true })
