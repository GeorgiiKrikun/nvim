plugins = {
  {
    "github/copilot.vim",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "plugins.configs.lspconfig"
    end,
  }
}

return plugins

