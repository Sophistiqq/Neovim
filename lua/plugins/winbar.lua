return {
  "fgheng/winbar.nvim",
  config = function()
    require("winbar").setup({
      enabled = true,

      show_file_path = true,
      show_symbols = true,

      -- Consider using a dedicated theme plugin for colors
      colors = {},

      icons = {
        file_icon_default = "",
        seperator = ">",
        editor_state = "●",
        lock_icon = "",
      },

      exclude_filetype = {
        "help",
        "startify",
        "dashboard",
        "packer",
        "neogitstatus",
        "NvimTree",
        "Trouble",
        "alpha",
        "lir",
        "Outline",
        "spectre_panel",
        "toggleterm",
        "qf",
        "neo-tree",
        "nvterm",
        "nvterm.terminal",
        "terminal",
        "zsh",
      },
    })
  end,
}

