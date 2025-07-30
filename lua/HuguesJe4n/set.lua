-- Enabl termcolors and  nerdfont
vim.opt.termguicolors = true
vim.g.have_nerd_font = true

-- Deactivate swap and backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Set undofiles to ~/.vim/undodir/
vim.opt.undofile = true
vim.opt.undodir = os.getenv('HOME' .. '/.vim/undodir')

-- Hide mode (enable when pretty status)
vim.opt.showmode = true

-- Hide cursor while typing
vim.opt.guicursor = ''

-- Set relative number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Always show sign column
vim.opt.signcolumn = 'yes'

-- Set tab as 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable smart indent
vim.opt.smartindent = true

-- Do not wrap line
vim.opt.wrap = false

-- Show tabs, trailing spaces and nonsec spaces
vim.opt.list = true
vim.opt.listchars = { tab = '❯❯', trail = '.', nbsp = '󱁐' }

-- Highlight current line and collumn 80
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'

-- Keep 8 lines above and bellow cursors
vim.opt.scrolloff = 8

-- Case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Highlight pattern while searching but do not highlight results
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- Blink on yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
  end,
})

-- ??
--vim.opt.isfname:append("@-@")

