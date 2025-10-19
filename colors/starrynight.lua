vim.o.background = "dark"
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "starry_night"

local c = {
  --	bg = "#121221",
  bg = "#141415",
  bg_alt = "#1c2a4c",
  fg = "#e5e5e5",
  gray = "#9a9a9a",
  yellow = "#fddc69",
  gold = "#e9c46a",
  blue = "#3b6aa0",
  light_blue = "#5a8abf",
  text = "#e5e5e5",
  purple = "#8265a7",
  red = "#c94f6d",
}
local highlights = {
  Normal = { fg = c.fg, bg = c.bg },
  Comment = { fg = c.gray, italic = true },
  Constant = { fg = c.gold },
  String = { fg = c.text },
  Number = { fg = c.yellow },
  Identifier = { fg = c.light_blue },
  Function = { fg = c.blue },
  Statement = { fg = c.red, bold = true },
  Keyword = { fg = c.purple, bold = true },
  Type = { fg = c.yellow },
  Special = { fg = c.gold },
  Error = { fg = c.red, bold = true },
  Todo = { fg = c.yellow, bg = c.bg_alt, bold = true },

  LineNr = { fg = c.bg_alt },
  CursorLineNr = { fg = c.yellow, bold = true },
  CursorLine = { bg = "#102848" },

  StatusLine = { fg = c.fg, bg = c.bg_alt },
  StatusLineNC = { fg = c.gray, bg = c.bg },

  Visual = { bg = "#244060" },

  NeoTreeDirectoryIcon = { fg = c.yellow },
  NeoTreeDirectoryName = { fg = c.blue },
  NeoTreeRootName = { fg = c.purple, bold = true },
  NeoTreeExpander = { fg = c.gold },
  NeoTreeIndentMarker = { fg = c.bg_alt },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
