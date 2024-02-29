local M = {}

M.treesitter = {
  ensure_installed = {
    "arduino",
    "bash",
    "bibtex",
    "c",
    "c_sharp",
    "cmake",
    "cpp",
    "css",
    "csv",
    "diff",
    "dockerfile",
    "elixir",
    "gdscript",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "godot_resource",
    "gomod",
    "graphql",
    "html",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "latex",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "mermaid",
    "nix",
    "perl",
    "php",
    "phpdoc",
    "python",
    "query",
    "rust",
    "scala",
    "svelte",
    "tsx",
    "typescript",
    "v",
    "vim",
    "vimdoc",
    "vue",  
    "xml",
    "yaml"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
