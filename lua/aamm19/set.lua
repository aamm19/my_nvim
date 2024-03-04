-- Enable line number
vim.opt.nu = true
-- Make relative number
vim.opt.rnu = true
-- Combine them for maximum style
vim.opt.signcolumn = 'number'
-- Tab of 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- Vim doesn't backups, but undo will have undos for days
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.undofile = true
-- Incremental search highlight
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Fast update time
vim.opt.updatetime = 50

-- Enable mouse mode
vim.o.mouse = 'a'
-- Color column 80 for Python
vim.opt.colorcolumn = "80"

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

