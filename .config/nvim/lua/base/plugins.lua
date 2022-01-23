-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

-- Auto install packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- gui
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('core.jv-colorizer')
    end
  }

  use {
    'folke/zen-mode.nvim',
    config = function()
      require('core.jv-zenmode')
    end
  }

  use {
    'folke/twilight.nvim',
    config = function()
      require('core.jv-twilight')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('core.jv-lualine')
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('core.jv-nvimtree')
    end
  }

  -- use {
    -- 'glepnir/dashboard-nvim',
    -- requires = 'nvim-lua/telescope.nvim',
    -- event = 'BufWinEnter',
    -- config = function()
      -- require("core.jv-dashboard")
    -- end
  -- }

  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    event = 'BufWinEnter',
    config = function()
      require('core.jv-bufferline')
    end
  }


  use {
    'nvim-treesitter/nvim-treesitter',
    run  = ':TSUpdate',
    config = function()
      require('core.jv-nvim-treesitter')
    end
  }

  use {'mboughaba/i3config.vim'}


  use {
    'hrsh7th/nvim-cmp',
    requires = {
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-nvim-lua" },
        { "ray-x/cmp-treesitter" },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-vsnip" },
        { "hrsh7th/vim-vsnip" },
        { "Saecki/crates.nvim" },
        { "f3fora/cmp-spell" },
        -- { "hrsh7th/cmp-cmdline" },
        { "tamago324/cmp-zsh" },
    },
    config = function()
      require('core.jv-nvimcmp')
  end,
  }

  use {"wbthomason/lsp-status.nvim"}
  use {"saadparwaiz1/cmp_luasnip"}
  use {"onsails/lspkind-nvim"}
  use {'neovim/nvim-lspconfig'}
  use {"ray-x/lsp_signature.nvim",
    config = function()
        require('core.jv-lspsignature')
    end,
    }

  use {'kien/ctrlp.vim'}

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
      require('core.jv-telescope')
    end
  }

 use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
        require('core.jv-indent')
    end
   }

 use {
    'itchyny/vim-cursorword',
    event = {'BufReadPre','BufNewFile'},
    config = function()
        require('core.jv-cursorword')
    end
  }

  use {'vimwiki/vimwiki'}

  use {
    'preservim/nerdcommenter',
    config = function()
        require('core.jv-nerdcommenter')
    end
  }

  use {
    'folke/which-key.nvim',
    config = function()
        require('core.jv-whichkey')
    end
  }

  use {'tpope/vim-surround'}

  use {'terryma/vim-multiple-cursors'}

  use {
    'Raimondi/delimitMate',
    event = 'InsertEnter',
    config = function()
      require('core.jv-delimitmate')
    end
  }

  -- use {'sainnhe/everforest'}
  use {
    'navarasu/onedark.nvim',
    config = function()
        require('core.jv-onedark')
    end
  }
  -- use ({
      -- 'oncomouse/lushwal',
      -- requires = { { 'rktjmp/lush.nvim', opt = true }, { 'rktjmp/shipwright.nvim', opt = true } },
  -- })


  use {'github/copilot.vim'}
  use {'lervag/vimtex'}
  use {'donRaphaco/neotex'}
  -- use {'donRaphaco/neotex'}
  use {'karb94/neoscroll.nvim',
    config = function()
      require('core.jv-neoscroll')
    end
  }
 use {'farmergreg/vim-lastplace'}
 use {'lewis6991/impatient.nvim'}
 -- use {'aserebryakov/vim-todo-lists'}



end)


--  automatically run :PackerCompile whenever plugins.lua is updated
-- vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerSync]])
