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
    "actionlint",                      -- yaml
    "angular-language-server",         -- angular
    "arduino-language-server",         -- arduino
    "autotools-language-server",       -- make
    "beautysh",                        -- shell
    "checkmake",                       -- make
    "clang-format",                    -- c
    "clangd",                          -- c
    "cmakelang",                       -- cmake
    "cmakelint",                       -- cmake
    "colorgen-nvim",                   --colors
    "cpplint",                         -- cpp
    "cpptools",                        -- cpp
    "csharp-language-server",          -- c#
    "css-lsp",                         -- css
    "cssmodules-language-server",      -- cssmodules
    "docker-compose-language-service", -- dockercompose.yml
    "dockerfile-language-server",      -- dockerfile
    "elixir-ls",                       -- elixir
    "eslint-lsp",                      -- js ts
    "fixjson",                         -- json
    "go-debug-adapter",                -- go
    "goimports",                       -- go
    "goimports-reviser",               -- go
    "golangci-lint-langserver",        -- go
    "golines",                         -- go
    "gopls",                           -- go
    "gradle-language-server",          -- java
    "graphql-language-service-cli",    -- graphql
    "html-lsp",
    "htmlbeautifier",
    "isort",                 -- py
    "impl",                  -- go
    "intelephense",          -- php
    "java-debug-adapter",    -- java
    "java-language-server",  -- java
    "java-test",             -- java
    "json-lsp",              -- json
    "latexindent",           -- latex
    "ltex-ls",               -- latex
    "luacheck",              -- lua
    "luaformatter",          -- lua
    "lua-language-server",   -- lua
    "markdown-toc",          -- md
    "markdownlint",          -- md
    "misspell",              -- *
    "nginx-language-server", -- nginx
    "nixpkgs-fmt",
    "openscad-lsp",
    "php-debug-adapter",           -- php
    "phpcs",                       -- php
    "phpstan",                     -- php
    "prettier",                    -- *
    "pretty-php",                  -- php
    "pylyzer",                     -- py
    "pyment",                      -- py
    "quick-lint-js",               -- js
    "ruby-lsp",                    -- ruby
    "rust-analyzer",               -- rs
    "shellcheck",                  --
    "sql-formatter",               -- sql
    "sqlfluff",                    -- sql
    "stylua",                      -- lua
    "svelte-language-server ",     -- svelte
    "tailwindcss-language-server", --
    "text-lsp",                    -- md txt
    "ts-standard",                 -- ts
    "typescript-language-server",  -- ts
    "typos-lsp",                   -- *
    "vim-language-server",         -- vim
    "vue-language-server",         --
  },
  automatic_installation = true,
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
