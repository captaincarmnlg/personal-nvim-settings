local status, ls = pcall(require, "luasnip")
if not status then
  return
end

local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node
local current_year = os.date("*t", os.time()).year
ls.add_snippets("all", {
  snip({
    trig = "c) comment",
    namr = "copyright comment",
    dscr = "copyright ",
  }, {
    text { "/**" },
    text { "", "* Copyright (c) " .. current_year .. " . All Rights Reserved." },
    text { "", "* Author: Nick Jacob Klaver" },
    text { "", "* Title: " },
    insert(1),
    text { "", "* Description: " },
    insert(2),
    text { "", "**/" }
  }),
  snip({
    trig = "c) comment doxy",
    namr = "copyright comment doxygen",
    dscr = "copyright ",
  }, {
    text { "/**" },
    text { "", "* @author Nick Jacob Klaver" },
    text { "", "* @file " },
    insert(1),
    text { "", "* @brief " },
    insert(2),
    text { "", "* @copyright Copyright (c) " .. current_year .. " . All Rights Reserved." },
    text { "", "**/" }
  }),
  snip({
    trig = "comCPTID",
    namr = "com App id",
    dscr = "App id for my alias captaincarmnlg"
  }, {
    text { "com.captaincarmnlg." },
    insert(1)
  })
})
