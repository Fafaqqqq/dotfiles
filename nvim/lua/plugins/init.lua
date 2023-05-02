local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require("plugins.lualine")
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require("plugins.treesitter")
      -- require("nvim-treesitter").setup()
    end
  }
  -- ...
  use {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  }
  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
