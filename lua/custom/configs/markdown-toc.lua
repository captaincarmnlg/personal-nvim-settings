local options = {
  headings = {
    -- Include headings before the ToC (or current line for `:Mtoc insert`).
    -- Setting to true will include headings that are defined before the ToC
    -- position to be included in the ToC.
    before_toc = false,
    pattern = "^(#+)%s+(.+)$",
  },
  fences = {
    enabled = true,
    -- These fence texts are wrapped within "<!-- % -->", where the '%' is
    -- substituted with the text.
    start_text = "toc",
    end_text = "tocstop"
    -- An empty line is inserted on top and below the ToC list before the being
  },
  auto_update = true,
  toc_list = {
    indent_size = function()
      return vim.bo.shiftwidth
    end,
    -- string or list of strings (for cycling)
    -- If cycle_markers = false and markers is a list, only the first is used.
    -- You can set to '1.' to use a automatically numbered list for ToC (if
    -- your markdown render supports it).
    markers = { '*', '+', '-' },
    -- Example config for cycling markers:
    ----- markers = {'*', '+', '-'},
    cycle_markers = true,
    item_format_string = "${indent} ${marker} [${name}](#${link})",
  },
}

require("mtoc").setup(options)
