-- save/quit
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- buffers
vim.keymap.set("n", "<leader>l", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>h", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader><tab>", "<cmd>e #<cr>", { desc = "Switch to other buffer" })
vim.keymap.set("n", "<leader>n", "<cmd>enew<cr>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>w", "<cmd>bdelete<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>ww", "<cmd>bdelete!<cr>", { desc = "Delete buffer without writing" })

-- qol improvements
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set({ "n", "v", "s", "o" }, ";", ":", { desc = "Start entering an Ex command" })
vim.keymap.set({ "n", "v", "s", "o" }, ";;", ";", { desc = "Repeat latest f, t, F or T N times" })
vim.keymap.set({"n"}, "<A-j>", "<cmd>:m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set({"n"}, "<A-k>", "<cmd>:m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set({"i"}, "<A-j>", "<esc>:m .+1<cr>==gi", { desc = "Move line down" })
vim.keymap.set({"i"}, "<A-k>", "<esc>:m .-2<cr>==gi", { desc = "Move line up" })
vim.keymap.set({"v"}, "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set({"v"}, "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- emacs keymaps
vim.keymap.set("i", "<C-a>", "<home>")
vim.keymap.set("i", "<C-e>", "<end>")
vim.keymap.set("i", "<C-b>", "<left>")
vim.keymap.set("i", "<C-f>", "<right>")
vim.keymap.set("i", "<C-n>", "<down>")
vim.keymap.set("i", "<C-p>", "<up>")
vim.keymap.set("i", "<C-d>", "<del>")
vim.keymap.set("i", "<A-b>", "<C-left>")
vim.keymap.set("i", "<A-f>", "<C-right>")
vim.keymap.set("i", "<C-k>", "<esc>lc$") -- del until eol
vim.keymap.set("i", "<A-d>", "<esc>lce") -- del until eow
vim.keymap.set("i", "<C-y>", '<C-r>+') -- paste text
