---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}
-- more keybinds!

M.trouble = {
  --normal mode
  n = {
    ["<leader>ttx"] = {
      function() require("trouble").toggle() end,
      "Toggle trouble"
    },
    ["<leader>ttw"] = {
      function() require("trouble").toggle("workspace_diagnostics") end,
      "Toggle trouble workspace"
    },
    ["<leader>ttd"] = {
      function() require("trouble").toggle("document_diagnostics") end,
      "Toggle trouble document"
    },
    ["<leader>ttq"] = {
      function() require("trouble").toggle("quickfix") end,
      "Toggle trouble quickfix"
    },
    ["<leader>ttl"] = {
      function() require("trouble").toggle("loclist") end,
      "Toggle trouble loclist"
    },
  }
}
return M
