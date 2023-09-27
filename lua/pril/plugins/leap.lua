return {
    {
        "ggandor/leap.nvim",
        version = false,
        event = "BufReadPost",
        keys = {
            { "<leader>s", "<Plug>(leap-forward-to)", mode = "n", desc = "Leap forward to" },
            { "<leader>S", "<Plug>(leap-backward-to)", mode = "n", desc = "Leap backward to" },
            { "<leader>s", "<Plug>(leap-forward-till)", mode = { "x", "o" }, desc = "Leap forward till" },
            { "<leader>S", "<Plug>(leap-backward-till)", mode = { "x", "o" }, desc = "Leap backward till" },
            -- TODO: not tested
            { "gs", "<Plug>(leap-from-window)", mode = "n", desc = "Leap from window" },
        },
    }
}
