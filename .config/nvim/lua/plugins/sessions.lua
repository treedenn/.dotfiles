return {
  "rmagatti/auto-session",
  config = function()
    local session = require("auto-session")

    session.setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }

    -- said to be better experience
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end,
}
