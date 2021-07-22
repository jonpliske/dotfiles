local gl = require('galaxyline')
local colors = require('config.colorscheme').galaxyline_colors()
local condition = require('galaxyline.condition')
local gls = gl.section

local function fileFullPath()
	local path = vim.fn.expand('%:p')
    return path
end

local mode_map = {
	['n'] = 'normal',
	['no'] = 'n·operator pending',
	['v'] = 'visual',
	['V'] = 'v·line',
	[''] = 'v·block',
	['s'] = 'select',
	['S'] = 's·line',
	[''] = 's·block',
	['i'] = 'insert',
	['R'] = 'replace',
	['Rv'] = 'v·replace',
	['c'] = 'command',
	['cv'] = 'vim ex',
	['ce'] = 'ex',
	['r'] = 'prompt',
	['rm'] = 'more',
	['r?'] = 'confirm',
	['!'] = 'shell',
	['t'] = 'terminal'
}

gl.short_line_list = {'NvimTree','vista','dbui','packer'}

gls.left[1] = {
  YouAreHere = {
    provider = function() return '  ' end,
    highlight = {colors.blue, colors.darkgrey, 'bold'},
    separator = '  ',
    separator_highlight = {
        colors.darkgrey,
        colors.bg,
    },
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return ' '..mode_map[vim.fn.mode()]..' '
    end,
    highlight = {colors.red,colors.bg,'bold'},
    separator = '  ',
    separator_highlight = {
        colors.bg,
        colors.darkgrey,
    },
  },
}
gls.left[3] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.darkgrey},
    -- separator = ' ',
    -- separator_highlight = {'NONE',colors.bg},
    separator = '  ',
    separator_highlight = {
        colors.darkgrey,
        colors.bg,
    },
  }
}
gls.left[4] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[5] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,colors.bg,'bold'},
    separator = '  ',
    separator_highlight = {
        colors.bg,
        colors.darkgrey,
    },
  }
}
gls.left[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',colors.darkgrey},
    highlight = {colors.fg,colors.darkgrey},
  },
}

gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    highlight = {colors.fg,colors.darkgrey,'bold'},
  }
}

gls.mid[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}
gls.mid[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.mid[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg},
  }
}

gls.mid[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

gls.mid[5] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
        return (not condition.check_active_lsp())
    end,
    icon = ' :',
    highlight = {colors.cyan,colors.darkgrey},
  }
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[2] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,colors.bg,'italic'},
  }
}

gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,colors.bg},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}

gls.right[8] = {
  RainbowBlue = {
    provider = function() return '  ▊' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  fileFullPath,
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,colors.bg}
  }
}
