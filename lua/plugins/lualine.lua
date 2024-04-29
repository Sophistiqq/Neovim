return {
  {
    "arkav/lualine-lsp-progress",
    VeryLazy = true,
    config = function()
      require('lualine').setup {
        sections = {
          lualine_c = {
            'lsp_progress'
          }
        },
        lsp_progress = {
          progress_enddelay = 4000, -- 1 second delay before hiding
          message_commenced = '...',
          message_completed = 'Done',
        }
      }
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
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
        },
        sections = {
          lualine_c = {
            'lsp_progress'
          }
        },
      }
    end
  }
}

