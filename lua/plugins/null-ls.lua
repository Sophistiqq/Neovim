return {
  "nvim-lua/plenary.nvim", -- Ensure plenary.nvim is installed first
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.rustfmt,
          null_ls.builtins.hover.dictionary
        },
        default_timeout = 10000,
      })
    end,
    requires = { "nvim-lua/plenary.nvim" }, -- Ensure plenary.nvim is listed as a requirement
  },
  {
    "nvim-lua/plenary.nvim",
    config = function()
      vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
    end,
  },
}

