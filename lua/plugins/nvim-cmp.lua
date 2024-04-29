-- Dependencies (remove duplicate cmp-path)
return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/vscode-langservers-extracted",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        -- Snippet configuration
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },

        -- Window configuration (optional)
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        -- Key mappings (adjust based on preference)
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
        }),

        -- Source configuration (prioritize LSP and luasnip)
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "nvim_lua" },
          { name = "path" },   -- Lower priority for path completion
          { name = "buffer" }, -- Even lower priority for buffer completion
        }),

        -- Filetype specific configuration (optional)
        -- Add more filetypes and sources as needed
        cmp.setup.filetype("gitcommit", {
          sources = cmp.config.sources({
            { name = "git" }, -- Assuming you have cmp-git installed
          }, {
            { name = "buffer" },
          }),
        }),

        -- Command-line completion (optional)
        cmp.setup.cmdline({ "/", "?" }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = "buffer" },
          },
        }),
      })
    end,
  },
}
