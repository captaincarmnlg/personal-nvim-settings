local status, ls = pcall(require, "luasnip")
if not status then
  return
end

local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets("markdown", {
  snip({
    trig = "toc",
    namr = "table of contents for markdown toc.nvim",
    dscr = "table of contents for markdown toc.nvim",
  }, {
    text { "## Table of Contents" },
    text { "", "<!-- toc -->" },
    insert(1),
    text { "" },
    text { "", "<!-- tocstop -->" },
  }),
})
