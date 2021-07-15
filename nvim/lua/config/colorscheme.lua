local utils = require('utils')
local cmd = vim.cmd

--utils.opt('o', 'termguicolors', true)
--vim.o.background = "dark"
--cmd 'colorscheme gruvbox'
local base16 = require 'base16'
--base16(base16.themes[vim.env.BASE16_THEME or "3024"], true)
base16(base16.themes['material-darker'], true)

local theme_names = base16.theme_names()
base16_position = 1
function cycle_theme()
  base16_position = (base16_position % #theme_names) + 1
  name = theme_names[base16_position]
  base16(base16.themes[name], true)
  print('base16-'..name)
end
