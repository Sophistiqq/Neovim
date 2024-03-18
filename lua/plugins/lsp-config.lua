return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({

        ensure_installed = {
          "tsserver",
          "lua_ls",
          "emmet_language_server",
          "html",
          "cssls",
          "svelte",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      local lsps = { "html", "tsserver", "emmet_language_server", "lua_ls", "cssls", "svelte" }

      ensure_installed = lsps

      for _, lsp in ipairs(lsps) do
        lspconfig[lsp].setup({
          capabilities = capabilities,
        })
      end
      lspconfig.emmet_language_server.setup({
        capabilities = capabilities,
        filetypes = { "html", "css", "svelte", "ejs" },
      })
      lspconfig.html.setup({
        capabilities = capabilities,
        filetypes = { "html", "ejs", "svelte" },
        indent = {
          enable = false,
        },
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
