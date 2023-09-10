-- save/quit
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader><S-q><S-q>", "<cmd>qa!<cr>", { desc = "Quit all without writing" })

-- buffers
vim.keymap.set("n", "<leader>l", "<cmd>bn<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>h", "<cmd>bp<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>n", "<cmd>enew<cr>", { desc = "New buffer" })
vim.keymap.set("n", "<leader><tab>", "<cmd>e #<cr>", { desc = "Switch to other buffer" })
vim.keymap.set("n", "<leader>w", "<cmd>bd<cr>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>ww", "<cmd>bd!<cr>", { desc = "Delete buffer without writing" })

-- terminal
vim.keymap.set("n", "<leader>t", "<cmd>te<cr>", { desc = "Open a terminal buffer" })
vim.keymap.set("t", "<C-\\><C-\\>", "<C-\\><C-n>", { desc = "Go to normal mode" })
-- visual ergonomics
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keypress ergonomics
-- vim.keymap.set("i", "<C-[>", ""
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set({ "n", "v", "s", "o" }, ";", ":", { desc = "Start entering an Ex command" })
vim.keymap.set({ "n", "v", "s", "o" }, ";;", ";", { desc = "Repeat latest f, t, F or T N times" })

-- move line/selection up/down
vim.keymap.set({"n"}, "<M-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set({"n"}, "<M-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set({"i"}, "<M-j>", "<cmd>m .+1<cr><C-f>", { desc = "Move line down" })
vim.keymap.set({"i"}, "<M-k>", "<cmd>m .-2<cr><C-f>", { desc = "Move line up" })
vim.keymap.set({"v"}, "<M-j>", "<esc><cmd>'<,'>m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set({"v"}, "<M-k>", "<esc><cmd>'<,'>m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- insert/command mode improvements
vim.keymap.set({"i", "c"}, "<C-a>", "<home>", { desc = "Move to start of line" })
vim.keymap.set({"i", "c"}, "<C-e>", "<end>", { desc = "Move to end of line" })
vim.keymap.set({"i", "c"}, "<C-b>", "<left>", { desc = "Move one character left" })
vim.keymap.set({"i", "c"}, "<C-f>", "<right>", { desc = "Move one character right" })
vim.keymap.set({"i", "c"}, "<C-n>", "<down>", { desc = "Move one line down" })
vim.keymap.set({"i", "c"}, "<C-p>", "<up>", { desc = "Move one line up" })
vim.keymap.set({"i", "c"}, "<M-b>", "<C-left>", { desc = "Move one word left" })
vim.keymap.set({"i", "c"}, "<M-f>", "<C-right>", { desc = "Move one word right" })
vim.keymap.set({"i", "c"}, "<C-d>", "<del>", { desc = "Delete character under cursor" })
vim.keymap.set({"i", "c"}, "<C-k>", "<C-o>D", { desc = "Delete until end of line" })
vim.keymap.set({"i", "c"}, "<M-d>", "<C-o>de", { desc = "Delete word after cursor" })
vim.keymap.set({"i", "c"}, "<M-BS>", "<C-w>", { desc = "Delete word before cursor" })
vim.keymap.set({"i", "c"}, "<C-y>", "<C-r><C-o>+", { desc = "Paste" })
vim.keymap.set({"i", "c"}, "<C-v>", "<C-r><C-o>+", { desc = "Paste" })
