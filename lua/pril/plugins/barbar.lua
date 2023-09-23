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
    },
}
