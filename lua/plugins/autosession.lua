return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        auto_restore_enabled = true,
        auto_save_enabled = true,
        auto_session_enable_last_session = false,
        auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
        auto_session_enabled = true,
        auto_save_interval = 30000,
        auto_restore_host = true
      }
    end
  }
}
