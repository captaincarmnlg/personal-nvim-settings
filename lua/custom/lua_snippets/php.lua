local status, ls = pcall(require, "luasnip")
if not status then
  return
end

local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets("php", {
  snip({
    trig = "vd",
    namr = "var_dump",
    dscr = "var_dump with formating",
  }, {
    text { "echo '#'.__LINE__.'<BR>'.__FILE__.'<br><pre>';" },
    text { "", "var_dump(" },
    insert(1),
    text { ");" },
    text { "", "echo '</pre><br>';" },
    text { "", "die();" },
  }),
})
