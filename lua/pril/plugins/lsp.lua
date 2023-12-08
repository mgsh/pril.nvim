return {
    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        opts = {
            server_opts = {
                -- pyright = {
                --     on_new_config = function(new_config, root_dir)
                --         new_config.init_options = {
                --             settings = {
                --                 python = {
                --                     pythonPath = root_dir .. "/.venv/bin/python",
                --                 },
                --             },
                --         }
                --     end,
                -- },
                -- ruff_lsp = {
                --     on_new_config = function(new_config, root_dir)
                --         new_config.init_options = {
                --             settings = {
                --                 interpreter = { root_dir .. "/.venv/bin/python" },
                --             }
                --         }
                --     end,
                -- },
                --     -- before_init = function(init_params, config)
                --     --     init_params.initializationOptions = {
                --     --         settings = {
                --     --             interpreter = { config.root_dir .. "/.venv/bin/python" },
                --     --         },
                --     --     }
                --     -- end,
                -- },
                jedi_language_server = {
                    on_new_config = function(new_config, root_dir)
                        new_config.init_options = {
                            workspace = {
                                environmentPath = root_dir .. "/.venv",
                                extraPaths = root_dir,
                            },
                        }
                    end,
                },
            },
            presetup = {
                -- ruff_lsp = function(client, _)
                --     if client.name == "ruff_lsp" then
                --         -- disable hover in favor of pyright
                --         client.server_capabilities.hoverProvider = false
                --     end
                -- end,
            },
        },
        ---@params opts PluginLspOpts
        config = function(_, opts)
            -- enable debug logs
            vim.lsp.set_log_level("debug")

            -- set up keymaps and autoformat
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("LspConfig", {}),
                callback = function(event)
                    -- autoformat
                    local client = vim.lsp.get_client_by_id(event.data.client_id)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = vim.api.nvim_create_augroup("LspFormat", {}),
                            callback = function(_)
                                vim.lsp.buf.format({ bufnr = event.buf })
                            end,
                        })
                    end

                    -- keymaps
                    local buf = event.buf
                    vim.keymap.set("n", "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, { buffer = buf, desc = "Goto definition" })
                    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = buf, desc = "Goto declaration" })
                    vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { buffer = buf, desc = "Show references" })
                    vim.keymap.set("n", "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, { buffer = buf, desc = "Goto implementation" })
                    vim.keymap.set("n", "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, { buffer = buf, desc = "Goto type definition" })
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buf, desc = "Hover" })
                    vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { buffer = buf, desc = "Signature help" })
                    vim.keymap.set("i", "<C-x><C-k>", vim.lsp.buf.signature_help, { buffer = buf, desc = "Signature help" })

                    -- disable diagnostics icons in sign column (gutter)
                    local diagnostics = { 'Error', 'Warn', 'Hint', 'Info' }
                    for _, name in ipairs(diagnostics) do
                        name = "DiagnosticSign" .. name
                        vim.fn.sign_define(name, { text = "" })
                    end
                end,
            })
            local server_opts = opts.server_opts

            -- mason-lspconfig default handler
            local function default_handler(server)
                -- presetup
                sopts = server_opts[server] or {}
                if opts.presetup[server] then
                    if opts.presetup[server](server, sopts) then
                        return
                    end
                elseif opts.presetup["*"] then
                    if opts.presetup["*"](server, sopts) then
                        return
                    end
                end

                -- lspconfig setup
                require("lspconfig")[server].setup(sopts)
            end

            -- mason-lspconfig setup
            ensure_installed = {} ---@type string[]
            for server in pairs(server_opts) do
                ensure_installed[#ensure_installed + 1] = server
            end
            require("mason-lspconfig").setup({
                ensure_installed = ensure_installed,
                handlers = { default_handler },
            })
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        build = ":MasonUpdate",
        ---@param opts MasonSettings
        config = function(_, opts)
            require("mason").setup(opts)
        end,
    },
}
