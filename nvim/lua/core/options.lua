local cmd = vim.cmd
-- Set options (global/buffer/windows-scoped)
local opt = vim.opt
-- Global variables
local g = vim.g
local s = vim.s
local indent = 2

-- cmd([[
--	filetype plugin indent on
--]])

opt.backspace = {"eol", "start", "indent"} -- allow backspacing over everything in insert mode
opt.clipboard = "unnamedplus" -- allow neovim to access the system clipboard
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
opt.encoding = "utf-8" -- the encoding
opt.matchpairs = {"(:)", "{:}", "[:]", "<:>"}
opt.syntax = "enable"

-- indention
opt.autoindent = true -- auto indentation
opt.expandtab = true -- convert tabs to spaces
opt.shiftwidth = indent -- the number of spaces inserted for each indentation
opt.smartindent = true -- make indenting smarter
opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
opt.tabstop = indent -- insert 2 spaces for a tab
opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"
-- search
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- smart case
opt.wildignore = opt.wildignore + {"*/node_modules/*", "*/.git/*", "*/vendor/*"}
opt.wildmenu = true -- make tab completion for files/buffers act like bash

-- ui
opt.laststatus = 2 -- only the last window will always have a status line
opt.lazyredraw = true -- don"t update the display while executing macros
opt.list = true
-- You can also add "space" or "eol", but I feel it"s quite annoying
opt.listchars = {
    tab = "┊ ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "×"
}
vim.wo.relativenumber = true

-- Hide cmd line
opt.cmdheight = 0 -- more space in the neovim command line for displaying messages

opt.mouse = "a" -- allow the mouse to be used in neovim
opt.number = true -- set numbered lines
opt.scrolloff = 18 -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 3 -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.splitbelow = true -- open new split below
opt.splitright = true -- open new split to the right
opt.wrap = false -- display a long line

-- backups
opt.backup = false -- create a backup file
opt.swapfile = false -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- By the way, -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
opt.showmode = false

-- perfomance
-- remember N lines in history
opt.history = 100 -- keep 100 lines of history
opt.redrawtime = 1500
opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.ttimeoutlen = 10
opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors
opt.background = "dark"
cmd.colorscheme("gruvbox")
