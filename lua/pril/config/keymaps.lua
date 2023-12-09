-- save/quit
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>QQ", "<cmd>qa!<cr>", { desc = "Quit all (nowrite)" })

-- buffers
vim.keymap.set("n", "<leader>l", "<C-^>", { desc = "Switch to buffer (mru)" })
vim.keymap.set("n", "<leader>N", "<cmd>enew<cr>", { desc = "New buffer" })

-- terminal
vim.keymap.set("t", "<C-\\><C-\\>", "<C-\\><C-n>", { desc = "Go to normal mode" })

-- visual ergonomics
-- vim.keymap.set("n", "J", "mzJ`z")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keypress ergonomics
vim.keymap.set({ "n", "i" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set("", ";", ":", { desc = "Start entering an Ex command" })
vim.keymap.set("", ";;", ";", { desc = "Repeat latest f, t, F or T N times" })

-- move line/selection up/down
vim.keymap.set("n", "<M-J>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<M-K>", "<cmd>m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("i", "<M-J>", "<cmd>m .+1<cr><C-f>", { desc = "Move line down" })
vim.keymap.set("i", "<M-K>", "<cmd>m .-2<cr><C-f>", { desc = "Move line up" })
vim.keymap.set("v", "<M-J>", "<esc><cmd>'<,'>m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<M-K>", "<esc><cmd>'<,'>m '<-2<cr>gv=gv", { desc = "Move selection up" })

-- insert/command mode improvements
vim.keymap.set("i", "<C-a>", "<cmd>norm ^<cr>", { desc = "Move to start of line" })
vim.keymap.set("c", "<C-a>", "<home>", { desc = "Move to start of line" })
vim.keymap.set("!", "<C-e>", "<end>", { desc = "Move to end of line" })
vim.keymap.set("!", "<C-b>", "<left>", { desc = "Move one character left" })
vim.keymap.set("!", "<C-f>", "<right>", { desc = "Move one character right" })
vim.keymap.set("!", "<C-p>", "<up>", { desc = "Move one line up" })
vim.keymap.set("!", "<C-n>", "<down>", { desc = "Move one line down" })
vim.keymap.set("i", "<M-b>", "<cmd>norm b<cr>", { desc = "Move one word left" })
vim.keymap.set("c", "<M-b>", "<C-left>", { desc = "Move one word left" })
vim.keymap.set("i", "<M-f>", "<cmd>norm w<cr>", { desc = "Move one word right" })
vim.keymap.set("c", "<M-f>", "<C-right>", { desc = "Move one word right" })
vim.keymap.set("!", "<C-d>", "<del>", { desc = "Delete character under cursor" })
vim.keymap.set("i", "<C-k>", "<cmd>norm d$<cr>", { desc = "Delete until end of line" })
vim.keymap.set("i", "<M-d>", "<cmd>norm de<cr>", { desc = "Delete word after cursor" })
vim.keymap.set("!", "<M-BS>", "<C-w>", { desc = "Delete word before cursor" })
vim.keymap.set("!", "<C-v>", "<C-r><C-o>+", { desc = "Paste (noautoindent)" })

-- vim diagnostics
vim.keymap.set("n", "<leader>i", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Goto previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Goto next diagnostic" })
