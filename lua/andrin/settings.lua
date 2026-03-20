-- 1. Undo Persistence
local undo_dir = vim.fn.expand("~/.local/state/nvim/undo")
if vim.fn.isdirectory(undo_dir) == 0 then
    vim.fn.mkdir(undo_dir, "p", 0700)
end
vim.opt.undodir = undo_dir
vim.opt.undofile = true

-- 2. Line Numbers & History
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.history = 10000

-- 3. External File Changes
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    command = "checktime",
})

-- 4. Search & UI
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.ruler = true
vim.opt.whichwrap:append("b,s,<,>,[,]")
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.mat = 2

-- 5. Encoding & Filesystem
vim.opt.encoding = "utf-8"
vim.opt.fileformats = "unix,dos,mac"

-- 6. Backups (already using undo files)
vim.opt.backup = false
vim.opt.writebackup = false

-- 7. Whitespace & Tabs
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "⎵", precedes = "<", extends = ">" }
vim.opt.showbreak = "↳ "
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- 8. Statusline
vim.opt.laststatus = 2

function _G.has_paste()
    if vim.opt.paste:get() then
        return "PASTE MODE  "
    end
    return ""
end

vim.opt.statusline = " %{%v:lua.has_paste()%}%F%m%r%h %w  CWD: %r%{getcwd()}%h   Line: %l  Column: %c"

-- 9. Colorscheme Settings (Dracula)
-- These must be set BEFORE loading the colorscheme in your lazy plugin file
vim.g.dracula_colorterm = 0
vim.g.dracula_italic = 0

