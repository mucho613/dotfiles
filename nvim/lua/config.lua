vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true

vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

vim.opt.laststatus = 2
vim.opt.ruler = true
vim.opt.scrolloff = 5
vim.opt.clipboard = "unnamedplus"

vim.opt.wildmode = "list:full"

vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.backspace = {"indent", "eol", "start"}

vim.opt.encoding = "utf-8"
vim.opt.fileencodings = {"utf-8", "sjis", "cp932", "iso-2022-jp", "shift-jis", "euc-jp"}

-- Save position
if vim.fn.has("autocmd") == 1 then
    vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*",
        callback = function()
            local line = vim.fn.line("'\"")
            if line > 0 and line <= vim.fn.line("$") then
                vim.cmd('normal! g`"')
            else
                vim.cmd('normal! g$')
            end
        end,
    })
end

-- jj で Normal mode に戻る
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

-- ファイルの自動保存
if vim.fn.has("persistent_undo") == 1 then
    vim.opt.undofile = true
    vim.opt.undodir = vim.fn.expand("~/.neovim/undodir")
end
