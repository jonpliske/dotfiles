local utils = require('utils')

-- cargo-culted magic that may not be necessary
utils.opt('o', 'termguicolors', true)
vim.o.background = "dark"

-- load base16
local base16 = require 'base16'

-- use same theme configured by base16-shell
base16(base16.themes[vim.env.BASE16_THEME or "3024"], true)

local theme_names = base16.theme_names()
BASE16_POSITION = 1
BASE16_THEME_PREVIEW = ''
function Base16Cycle()
  BASE16_POSITION = (BASE16_POSITION % #theme_names) + 1
  BASE16_THEME_PREVIEW = theme_names[BASE16_POSITION]
  base16(base16.themes[BASE16_THEME_PREVIEW], true)
  print('base16-'..BASE16_THEME_PREVIEW)
end
