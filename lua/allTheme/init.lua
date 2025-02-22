-- Nome do tema: AllTheme
local theme = {}

theme.colors = {
  bg = "#1f1f1f",
  fg = "#888888",
  red = "#c24038",
  green = "#608B4E",
  blue = "#569CD6",
  yellow = "#DCDCAA",
  orange = "#CE9178",
  purple = "#C586C0",
  cyan = "#4EC9B0",
  white = "#FAFAFA",
  black = "#1A1A1A",
  gray = "#727272"
}

function theme.set_highlights()
  local hl = vim.api.nvim_set_hl
  local c = theme.colors

  -- Fundo e Texto Principal
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "Comment", { fg = "#676f7d", italic = true })
  hl(0, "String", { fg = "#e5c07b" })
  hl(0, "Number", { fg = "#c678dd" })
  hl(0, "Constant", { fg = "#56b6c2" })
  hl(0, "Keyword", { fg = "#e06c75" })
  hl(0, "Function", { fg = "#98c379" })
  hl(0, "Variable", { fg = "#79b8ff" })
  hl(0, "Type", { fg = "#56b6c2" })
  hl(0, "Title", { fg = "#e06c75", bold = true })

  -- Elementos do Editor
  hl(0, "CursorLine", { bg = "#303030" })
  hl(0, "LineNr", { fg = c.gray })
  hl(0, "CursorLineNr", { fg = c.white })
  hl(0, "Visual", { bg = "#292929" })
  hl(0, "MatchParen", { fg = c.orange, bold = true })
  hl(0, "StatusLine", { fg = c.white, bg = "#1A1A1A" })
  hl(0, "StatusLineNC", { fg = c.gray, bg = "#1A1A1A" })
  hl(0, "Pmenu", { fg = c.white, bg = "#1A1A1A" })
  hl(0, "PmenuSel", { bg = "#212121" })

  -- Git
  hl(0, "GitSignsAdd", { fg = c.green })
  hl(0, "GitSignsChange", { fg = c.yellow })
  hl(0, "GitSignsDelete", { fg = c.red })

  -- Neo-tree
  hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg })
  hl(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
  hl(0, "NeoTreeDirectoryName", { fg = c.blue, bold = true })
  hl(0, "NeoTreeDirectoryIcon", { fg = c.yellow })
  hl(0, "NeoTreeGitModified", { fg = c.yellow })
  hl(0, "NeoTreeGitAdded", { fg = c.green })
  hl(0, "NeoTreeGitDeleted", { fg = c.red })

  -- -- Terminal
  -- vim.g.terminal_color_0 = "#1f1f1f"
  -- vim.g.terminal_color_1 = "#c24038"
  -- vim.g.terminal_color_2 = "#608B4E"
  -- vim.g.terminal_color_3 = "#DCDCAA"
  -- vim.g.terminal_color_4 = "#569CD6"
  -- vim.g.terminal_color_5 = "#C586C0"
  -- vim.g.terminal_color_6 = "#4EC9B0"
  -- vim.g.terminal_color_7 = "#FAFAFA"
end

function theme.setup()
  theme.set_highlights()
end

return theme


