return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        cmd = "Telescope",
        keys = {
            -- common
            { "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Find buffers" },
            { "<leader>;", "<cmd>Telescope command_history<cr>", desc = "Search command history" },
            { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find files (root dir)" },

            -- find
            { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Find buffers" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files (root dir)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Find recent" },

            -- search
            { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Search text (root dir)" },
            { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search text (buffer)" },
            { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Search commands" },
            { "<leader>sC", "<cmd>Telescope command_history<cr>", desc = "Search command history" },
            { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Search help pages" },
            { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Search keymaps" },
            { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Search man pages" },
            { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Search vim options" },
        },
        opts = function()
            local actions = require("telescope.actions")
            return {
                defaults = {
                    prompt_prefix = " ",
                    selection_caret = " ",
                    preview = false,
                    sorting_strategy = "ascending",
                    layout_config = { prompt_position = "top", },
                    mappings = {
                        i = {
                            ["<M-BS>"] = { "<C-S-w>", type = "command" },
                            ["<C-d>"] = { "<Del>", type = "command" },
                            ["<C-k>"] = function() vim.cmd.normal("c$") end,
                            ["<C-v>"] = { "<C-r><C-o>+", type = "command" },
                        },
                        n = {
                            ["q"] = actions.close,
                        },
                    },
                },
            }
        end,
    },
}
