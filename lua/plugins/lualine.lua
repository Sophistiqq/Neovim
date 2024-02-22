return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'horizon',
          disabled_filetypes = {
            statusline = {},
            winbar = {},
            neotree = {}
          },
          ignore_focus = {
            neotree = {}
          }
        },
        extensions = {
          "quickfix",
          "nvim-tree"
        }
      }
    end
  }
}
