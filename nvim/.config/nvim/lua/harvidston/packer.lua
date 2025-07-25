local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'mfussenegger/nvim-dap-python'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

  -- Цветовые схемы и интерфейс
  use 'rebelot/kanagawa.nvim'
  use 'sainnhe/gruvbox-material'
  use 'wbthomason/packer.nvim'

  -- Файловый менеджер, иконки, статус-бар, вкладки
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

  -- Telescope — мощный поиск
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter — улучшенная подсветка и анализ кода
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- LSP и автодополнение
  use 'williamboman/mason.nvim'           -- установка LSP серверов
  use 'williamboman/mason-lspconfig.nvim' -- интеграция mason и lspconfig
  use 'neovim/nvim-lspconfig'             -- конфигурирование LSP
  use 'glepnir/lspsaga.nvim'              -- UI для LSP (фичи, дефы, ховеры)

  -- Completion (автодополнение)
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"      -- готовые сниппеты для разных языков

  -- Линтинг и форматирование через null-ls
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'          -- prettier для фронтенда

  use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end} --автозакрытие скобок
  use {
    'folke/which-key.nvim',                 -- подсказки по шорткатам
    config = function()
      require("which-key").setup {}
    end
  }

  use 'lewis6991/gitsigns.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

