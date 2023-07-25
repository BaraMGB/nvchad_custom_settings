local overrides = require("custom.configs.overrides")
local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd"
      }
    }
  },
  {
    "baramgb/nextdev-nvim"
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  }
}

return plugins
