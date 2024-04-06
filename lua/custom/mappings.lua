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
    },
    ["<leader>ldb"] = {
      function() require('dap').toggle_breakpoint() end,
      "toggle breakpoint"
    },
    ["<leader>ldc"] = {
      function() require('dap').continue() end,
      "breakpoint continue"
    },
    ["<leader>ldso"] = {
      function() require('dap').step_over() end,
      "breakpoint step over"
    },
    ["<leader>ldsi"] = {
      function() require('dap').step_into() end,
      "breakpoint step into"
    },
    ["<leader>ldst"] = {
      function() require('dap').repl.open() end,
      "inspect state"
    },

  },
  v = {
    [">"] = { ">gv", "indent" },
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
M.neogit = {
  --normal mode
  n = {
    ["<leader>gf"] = {
      function() require("neogit").open({ kind = "floating" }) end,
      "Open the git as a floating window"
    },
    ["<leader>gs"] = {
      function() require("neogit").open({ kind = "auto" }) end,
      "Open the git as a auto split window"
    },
  }
}

return M
