local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    'hrsh7th/cmp-nvim-lsp-signature-help'
  },
  -- Override plugin definition options

  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require "plugins.configs.lspconfig"
  --     require "custom.configs.lspconfig"
  --   end, -- Override to setup mason-lspconfig
  -- },
  {
    "L3MON4D3/LuaSnip",
    config = function(_, opts)
      require("plugins.configs.others").luasnip(opts)
      require("custom.configs.luasnip")
    end,
  },
  -- override plugin configs
  {
    "mfussenegger/nvim-dap",
    "nvimtools/none-ls.nvim",
    "nvim-neotest/nvim-nio"
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "neovim/nvim-lspconfig",
    -- BufRead is to make sure if you do nvim some_file then this is still going to be loaded
    event = { "VeryLazy", "BufRead", "BufReadPre", "BufNewFile" },
    config = function() end, -- Override to make sure load order is correct
    dependencies = {
      {
        "williamboman/mason.nvim",
        config = function(plugin, opts)
          require "custom.configs.mason-lspconfig".setup(plugin, opts)
          require("custom.configs.mason-null-ls").setup(plugin, opts)
          require("custom.configs.mason-nvim-dap").setup(plugin, opts)
        end,
      },
      "williamboman/mason-lspconfig",
      "jay-babu/mason-null-ls.nvim",
      "jay-babu/mason-nvim-dap.nvim",
      -- TODO: Add mason-null-ls? mason-dap?
    }
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Trouble",
    config = function()
      require("trouble").setup()
    end
  },
  -- neo git
  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",  -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed, not both.
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require "custom.configs.neogit"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "diepm/vim-rest-console",
    lazy = false,
    config = function()
      require "custom.configs.vim-rest-console"
    end
  },
  {
    'normen/vim-pio',
    cmd = { "PIO", "PIOInit", "PIOInstall", "PIOUninstall", "PIONewProject", "PIOAddLibrary", "PIORemoveLibrary" },
  },
  {
    "othree/html5.vim",
    "pangloss/vim-javascript",
    "evanleck/vim-svelte",
  },
  {
    "danymat/neogen",
    cmd = "Neogen",
    config = function()
      require('neogen').setup({ snippet_engine = "luasnip" })
    end,
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    enabled = false, -- disable for now
  },
  {
    "hedyhli/markdown-toc.nvim",
    ft = "markdown",
    cmd = { "Mtoc" },
    config = function()
      require("custom.configs.markdown-toc")
    end
  },

  -- {
  --   "andythigpen/nvim-coverage",
  --   requires = "nvim-lua/plenary.nvim",
  --   rocks = { "lua-xmlreader" },
  --   config = function()
  --     require("coverage").setup()
  --   end,
  -- }

  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "plugins.configs.telescope"
      require "custom.configs.telescope"
    end, -- Override to setup mason-lspconfig
  },
  -- this plugin adds
  -- FIX: fix this
  -- TODO: do this
  -- HACK: is a hack
  -- WARN: warning
  -- PERF: fully optimised
  -- NOTE: note
  -- TEST: test
  {
    "folke/todo-comments.nvim",
    lazy = false,
    event = "BufEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("custom.configs.todo-comments")
    end,
  },
  {
    "max397574/better-escape.nvim",
    enabled = false
  }
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
