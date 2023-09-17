return {
    {
        "chrisgrieser/nvim-spider",
        lazy = true,
        opts = {
            skipInsignificantPunctuation = false,
        },
        keys = {
            { "w", "<cmd>lua require('spider').motion('w')<cr>", mode = {"n", "o", "x"}, desc = "Spider-w" },
            { "e", "<cmd>lua require('spider').motion('e')<cr>", mode = {"n", "o", "x"}, desc = "Spider-e" },
            { "b", "<cmd>lua require('spider').motion('b')<cr>", mode = {"n", "o", "x"}, desc = "Spider-b" },
            { "ge", "<cmd>lua require('spider').motion('ge')<cr>", mode = {"n", "o", "x"}, desc = "Spider-ge" },
        },
    },
}
