local utils = require('utils')

-- cargo-culted magic that may not be necessary
utils.opt('o', 'termguicolors', true)
vim.o.background = "dark"


-- load base16
local base16 = require 'base16'

-- use same theme configured by base16-shell
local theme = base16.themes[vim.env.BASE16_THEME or "3024"]
base16(theme, true)

-- allow transparency
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

local theme_names = base16.theme_names()
BASE16_POSITION = 1
BASE16_THEME_PREVIEW = ''
function Base16Cycle()
  BASE16_POSITION = (BASE16_POSITION % #theme_names) + 1
  BASE16_THEME_PREVIEW = theme_names[BASE16_POSITION]
  base16(base16.themes[BASE16_THEME_PREVIEW], true)
  print('base16-'..BASE16_THEME_PREVIEW)
end

local hash = function(s) return '#'..s end

local out = {}
local colorscheme = {}
out.galaxyline_colors = function()
    colorscheme = {
        bufbg  = hash(theme.base00),
        bg = hash(theme.base01),
        darkgrey = hash(theme.base02),
        grey = hash(theme.base03),
        fg = hash(theme.base05),
        yellow = hash(theme.base0A),
        cyan = hash(theme.base0C),
        darkblue = hash(theme.base0D),
        green = hash(theme.base0B),
        orange = hash(theme.base09),
        violet = hash(theme.base0E),
        magenta = hash(theme.base0E),
        blue = hash(theme.base0D),
        red = hash(theme.base08),
        white = hash(theme.base07),
    }
    return colorscheme
end

return out
