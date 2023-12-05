-- save/quit
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader><S-q><S-q>", "<cmd>qa!<cr>", { desc = "Quit all without writing" })

-- buffers
vim.keymap.set("n", "<leader>l", "<C-^>", { desc = "Previously Active Buffer" })
vim.keymap.set("n", "<leader><S-n>", "<cmd>enew<cr>", { desc = "New Buffer" })

-- terminal
vim.keymap.set("t", "<C-\\><C-\\>", "<C-\\><C-n>", { desc = "Go to normal mode" })

-- visual ergonomics
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keypress ergonomics
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set({ "n", "v", "s", "o" }, ";", ":", { desc = "Start entering an Ex command" })
vim.keymap.set({ "n", "v", "s", "o" }, ";;", ";", { desc = "Repeat latest f, t, F or T N times" })

-- move line/selection up/down
vim.keymap.set({"n"}, "<M-J>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set({"n"}, "<M-K>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set({"i"}, "<M-J>", "<cmd>m .+1<cr><C-f>", { desc = "Move line down" })
vim.keymap.set({"i"}, "<M-K>", "<cmd>m .-2<cr><C-f>", { desc = "Move line up" })
vim.keymap.set({"v"}, "<M-J>", "<esc><cmd>'<,'>m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set({"v"}, "<M-K>", "<esc><cmd>'<,'>m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- insert/command mode improvements
vim.keymap.set({"i"}, "<C-a>", "<cmd>norm ^<cr>", { desc = "Move to start of line" })
vim.keymap.set({"c"}, "<C-a>", "<home>", { desc = "Move to start of line" })
vim.keymap.set({"i", "c"}, "<C-e>", "<end>", { desc = "Move to end of line" })
vim.keymap.set({"i", "c"}, "<C-b>", "<left>", { desc = "Move one character left" })
vim.keymap.set({"i", "c"}, "<C-f>", "<right>", { desc = "Move one character right" })
vim.keymap.set({"i", "c"}, "<C-n>", "<down>", { desc = "Move one line down" })
vim.keymap.set({"i", "c"}, "<C-p>", "<up>", { desc = "Move one line up" })
-- TODO: fix command mode improvements
vim.keymap.set({"i", "c"}, "<M-b>", "<cmd>norm b<cr>", { desc = "Move one word left" })
vim.keymap.set({"i", "c"}, "<M-f>", "<cmd>norm w<cr>", { desc = "Move one word right" })
vim.keymap.set({"i", "c"}, "<C-d>", "<del>", { desc = "Delete character under cursor" })
vim.keymap.set({"i", "c"}, "<C-k>", "<cmd>norm d$<cr>", { desc = "Delete until end of line" })
vim.keymap.set({"i", "c"}, "<M-d>", "<cmd>norm de<cr>", { desc = "Delete word after cursor" })
-- TODO: fix delete word from end of line
vim.keymap.set({"i", "c"}, "<M-BS>", "<cmd>norm db<cr>", { desc = "Delete word before cursor" })
vim.keymap.set({"i", "c"}, "<C-y>", "<C-r><C-o>+", { desc = "Paste" })
vim.keymap.set({"i", "c"}, "<C-v>", "<C-r><C-o>+", { desc = "Paste" })
