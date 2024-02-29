local M = {}
M.setup = function(_, opts)
    require("mason").setup(opts)
    require("mason-null-ls").setup({
        -- https://github.com/jay-babu/mason-null-ls.nvim
        -- A list of sources to install if they're not already installed.
        -- This setting has no relation with the `automatic_installation` setting.
        ensure_installed = {},
        -- Enable or disable null-ls methods to get set up
        -- This setting is useful if some functionality is handled by other plugins such as `conform` and `nvim-lint`
        methods = {
            diagnostics = true,
            formatting = true,
            code_actions = true,
            completion = true,
            hover = true,
        },
        -- Run `require("null-ls").setup`.
        -- Will automatically install masons tools based on selected sources in `null-ls`.
        -- Can also be an exclusion list.
        -- Example: `automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }`
        automatic_installation = true,
        -- See [#handlers-usage](#handlers-usage) section
        handlers = nil,
    })
    require("null-ls").setup({
        sources = {
            -- all sources go here.
        },
        on_attach = function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = augroup,
                    buffer = bufnr,
                    callback = function()
                        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                        -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                        --vim.lsp.buf.formatting_sync()
                        vim.lsp.buf.format({ 
                            bufnr = bufnr,
                            filter = function(client)
                                return client.name == "null-ls"
                            end,
                            async = false 
                        })
                    end,
                })
            end
        end,
    })
end
return M