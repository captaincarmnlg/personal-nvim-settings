local status, ls = pcall(require, "luasnip")
if not status then
  return
end

local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local current_year = os.date("*t",os.time()).year
ls.add_snippets("all", {
  snip({
    trig = "c) comment",
    namr = "copyright comment",
    dscr = "var_dump with formating",
  }, {
    text { "/**" },
    text {"", "* Copyright (c) ".. current_year .." . All Rights Reserved."},
    text { "", "* Author: " },
    insert(1),
    text {"", "* Title: "},
    insert(2),
    text {"", "* Description: "},
    insert(3),
    text {"**/"}
  }),
})
