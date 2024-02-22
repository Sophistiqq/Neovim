return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          numbers = "ordinal",
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
          end,
          separator_style = "thin",
          always_show_bufferline = true,
          --adjust itself when nvimtree is open
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "center"
            }
          },
        }
      })
      --set bufferline next into C-Tab
      vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>:Bdelete<CR>", { noremap = true, silent = true })
    end
  }
}
