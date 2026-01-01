require('config')
require('rust')

local vim = vim

-- Nvim tree: disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('editorconfig/editorconfig-vim')
Plug('github/copilot.vim')
Plug('tiagovla/tokyodark.nvim')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')

Plug('neoclide/coc.nvim', { ['branch'] = 'release'})

Plug('rust-lang/rust.vim')
Plug('skim-rs/skim', { ['dir'] = '~/.config/nvim/plugins/skim', ['do'] = './install' })

Plug('akinsho/toggleterm.nvim', { ['tag'] = '*' })

vim.call('plug#end')

require("toggleterm").setup()

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd('silent! colorscheme tokyodark')
