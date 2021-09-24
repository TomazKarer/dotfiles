local fn = vim.fn
local api = vim.api

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

--api.nvim_set_keymap('n', '<leader>ff', ":Telescope find_files<cr>", { noremap = true, silent = true })
--api.nvim_set_keymap('n', '<leader>fg', ":Telescope live_grep<cr>", { noremap = true, silent = true })
--api.nvim_set_keymap('n', '<leader>fb', ":Telescope buffers<cr>", { noremap = true, silent = true })
--api.nvim_set_keymap('n', '<leader>fh', ":Telescope help_tags<cr>", { noremap = true, silent = true })\\

--lspconfig
local nvim_lsp = require("lspconfig")

--fzf
api.nvim_set_keymap('n', '<leader>ff', ":Files<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fg', ":Rg<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fb', ":Buffers<cr>", { noremap = true, silent = true })

-- vimwiki
vim.g.vimwiki_list = {{path = '~/development/personal/personal_wiki/', syntax = 'markdown', ext = '.md'}}

require("packer").startup(
  function()
    use "wbthomason/packer.nvim"
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {'junegunn/fzf', dir = '~/.fzf', run = ':call fzf#install()'}
    use {'junegunn/fzf.vim'}

    use {
      'vimwiki/vimwiki'
    }

    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'neovim/nvim-lspconfig'
    }
  end
)
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua"},
    indent = {enable = true},
    highlight = {enable = true}
}
