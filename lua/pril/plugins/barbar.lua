return {
    {
        "romgrk/barbar.nvim",
        version = "*",
        event = "VeryLazy",
        opts = {
            animation = false,
            clickable = false,
            exclude_ft = {},
            exclude_name = {},
            highlight_alternate = true,
            icons = {
                button = false,
                buffer_index = "subscript",
                separator = { left = "█", right = "" },
                separator_at_end = false,
                diagnostics = {
                    [vim.diagnostic.severity.ERROR] = { enabled = false },
                    [vim.diagnostic.severity.WARN] = { enabled = false },
                    [vim.diagnostic.severity.INFO] = { enabled = false },
                    [vim.diagnostic.severity.HINT] = { enabled = true },
                },
                gitsigns = {
                    added = { enabled = false },
                    deleted = { enabled = false },
                    changed = { enabled = false },
                },
                alternate = {
                    separator = { left = "▒", right = "" },
                    filetype = { custom_colors = true },
                },
                inactive = {
                    separator = { left = "▒", right = "" },
                }
            },
        },
        keys = {
            -- controls
            { "<leader>w", "<cmd>BufferClose<cr>", desc = "Close buffer" },
            { "<leader>ww", "<cmd>BufferClose!<cr>", desc = "Close buffer without writing" },
            { "<leader>P", "<cmd>BufferPin<cr>", desc = "Pin buffer" },

            -- navigation
            { "<leader>p", "<cmd>BufferPrevious<cr>", desc = "Previous buffer" },
            { "<leader>n", "<cmd>BufferNext<cr>", desc = "Next buffer" },

            -- selection
            { "<leader><", "<cmd>BufferPick<cr>", desc = "Buffer pick" },

            -- jump
            { "<leader>1", "<cmd>BufferGoto 1<cr>", desc = "Buffer 1" },
            { "<leader>2", "<cmd>BufferGoto 2<cr>", desc = "Buffer 2" },
            { "<leader>3", "<cmd>BufferGoto 3<cr>", desc = "Buffer 3" },
            { "<leader>4", "<cmd>BufferGoto 4<cr>", desc = "Buffer 4" },
            { "<leader>5", "<cmd>BufferGoto 5<cr>", desc = "Buffer 5" },
            { "<leader>6", "<cmd>BufferGoto 6<cr>", desc = "Buffer 6" },
            { "<leader>7", "<cmd>BufferGoto 7<cr>", desc = "Buffer 7" },
            { "<leader>8", "<cmd>BufferGoto 8<cr>", desc = "Buffer 8" },
            { "<leader>9", "<cmd>BufferGoto 9<cr>", desc = "Buffer 9" },
            { "<leader>0", "<cmd>BufferLast<cr>", desc = "Last Buffer" },
        },
    },
}
