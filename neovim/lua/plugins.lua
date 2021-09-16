local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

api.nvim_set_keymap('n', '<leader>ff', ":Telescope find_files<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fg', ":Telescope live_grep<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fb', ":Telescope buffers<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fh', ":Telescope help_tags<cr>", { noremap = true, silent = true })

require("packer").startup(
  function()
    use "wbthomason/packer.nvim"
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
  end
)

