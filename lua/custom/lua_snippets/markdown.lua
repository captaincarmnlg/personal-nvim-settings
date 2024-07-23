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
    namr = "table of contents for markdown",
    dscr = "table of contents for markdown",
  }, {
    text { "## " },
    insert(1),
    text { "", "<!-- toc -->" },
    insert(1),
    text { "" },
    text { "", "<!-- tocstop -->" },
    text { "", "\\pagebreak" },
  }),
  snip({
    trig = "meta",
    namr = "metadata of a document",
    dscr = "cover of a document",
  }, {
    text { "---" },
    text { "", "Title: " },
    insert(1),
    text { "" },
    text { "", "Author: Nick Jacob Klaver" },
    text { "", "Date: " .. os.date("%Y-%m-%d") },
    text { "", "Description: " },
    insert(2),
    text { "", "Lang: " },
    insert(3),
    text { "", "urlcolor: blue" },
    text { "","---" },
    text { "" },
    text { "" },
  }),

})
