return {
    -- snippets
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    },
    -- comments
    { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        opts = {
            options = {
                custom_commentstring = function()
                    return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
                end,
            },
        },
    },

    -- auto completion
    --    {
    --        "hrsh7th/nvim-cmp",
    --        version = false, -- last release is way too old
    --        event = "InsertEnter",
    --        dependencies = {
    --            "hrsh7th/cmp-nvim-lsp",
    --            "hrsh7th/cmp-buffer",
    --            "hrsh7th/cmp-path",
    --            "saadparwaiz1/cmp_luasnip",
    --        },
    --    }
}
