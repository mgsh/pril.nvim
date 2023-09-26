return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        cmd = "Telescope",
        keys = {
            { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "List Buffers" },
            { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
            { "<leader>;", "<cmd>Telescope command_history<cr>", desc = "Command History" },
            { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
        },
        opts = {
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                preview = false,
                sorting_strategy = "ascending",
                layout_config = { prompt_position = "top", },
            },
        },
    },
}
