-- creates an object for the module
local M = {}

function M.setup()
    require("pril.config.keymaps")
    vim.cmd.colorscheme("solarized")
end

return M
