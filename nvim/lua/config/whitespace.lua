local cmd = vim.cmd

vim.g.better_whitespace_enabled = true
vim.g.strip_only_modified_lines = true
cmd('highlight ExtraWhitespace ctermbg=red')
