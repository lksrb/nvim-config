vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

use {
    'rebelot/kanagawa.nvim',
    as = 'kanagawa'
}

use {
    'nyoom-engineering/nyoom.nvim',
    as = 'nyoom'
}

use {
	'catppuccin/nvim',
	as = 'catppuccin'
}

use {
    'rose-pine/neovim',
    as = 'rose-pine'
}

use {
    'folke/tokyonight.nvim',
    as = 'tokyonight'
}

use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
use ('nvim-treesitter/playground')

use('theprimeagen/harpoon')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

end)
