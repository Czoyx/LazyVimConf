-- bootstrap lazy.nvim, LazyVim and your plugins
-- lua/config/dap-log.lua
vim.fn.setenv("DAP_LOG_LEVEL", "DEBUG")
vim.fn.setenv("DAP_LOG_FILE", vim.fn.stdpath("data") .. "/dap.log")

require("config.lazy")
