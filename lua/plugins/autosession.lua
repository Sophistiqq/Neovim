return {
  {
    "rmagatti/auto-session",
    lazy = true,
    config = function()
      require("auto-session").setup {
        auto_restore_enabled = true,
        auto_save_enabled = true,
        auto_session_enable_last_session = false,
        auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
        auto_session_enabled = true,
        auto_save_interval = 30000,
        auto_restore_host = true,
        auto_session_suppress_dirs = {'/tmp', '/var/tmp'},
        auto_session_exclude = {'dashboard', 'NvimTree', 'startify', 'term', 'qf'},
        auto_session_pre_save_cmds = {':silent! wa', ':AutoSessionSave'},
        auto_session_pre_restore_cmds = {},
        auto_session_post_restore_cmds = {},
        auto_session_enable_verbose_logging = 1,
        auto_session_compress_enabled = true,
      }
    end
  }
}

