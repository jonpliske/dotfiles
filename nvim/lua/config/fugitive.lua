local utils = require('utils')
utils.map('n', '<Leader>ga', '<cmd>Git add %:p<CR><CR>')
utils.map('n', '<Leader>gs', '<cmd>Git<CR>')  -- Git status
utils.map('n', '<Leader>gp', '<cmd>Git push<CR>')
utils.map('n', '<Leader>gb', '<cmd>Git blame<CR>')
