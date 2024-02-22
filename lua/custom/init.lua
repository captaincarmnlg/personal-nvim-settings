
-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- relative number makes lines relative 
vim.wo.relativenumber = true
-- add snippets paths
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

-- mappings

--vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
-- automation
vim.api.nvim_create_autocmd("BufWritePre",{
  pattern = {"*.js", "*.lua"},
  callback = function() vim.lsp.buf.format() end
})

-- highlight yanked text 
vim.api.nvim_create_augroup("custom_buffer", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group    = "custom_buffer",
  pattern  = "*",
  callback = function() vim.highlight.on_yank { timeout = 200 } end
})
