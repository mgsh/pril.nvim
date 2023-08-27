require("pril.config")

return {
    { "folke/lazy.nvim", version = "*" },
    {
        "mgsh/pril.nvim",
        priority = 10000, -- high load priority
        lazy = false, -- load on start
        config = true, -- call config without opts
        version = "*", -- use latest stable version
        dev = true, -- TODO: remove after development
    },
}
