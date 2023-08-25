print("loading pril/plugins/core.lua")
require("pril.config")

print("pre-return pril/plugins/core.lua")
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
