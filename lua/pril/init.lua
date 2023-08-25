print("loading pril/init.lua")
-- creates an object for the module
local M = {}

function M.setup()
    print("invoking lazyvim/init.setup()")
    require("pril.config.keymaps")
    print("loading colorscheme")
    vim.cmd.colorscheme("solarized")
    print("done lazyvim/init.setup()")
end

print("pre-return pril/init.lua")
return M
