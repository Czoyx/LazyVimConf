return {
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup({
        -- delve configurations
        delve = {
          path = "/home/caoyx/go/bin/dlv",
          args = {
            "--only-same-user=false",
            "--log",
            "--log-output=dap",
          },
          detached = true,
        },
      })
    end,
    opts = {},
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      --      local dap = require("dap")
      --
      --      dap.set_log_level("DEBUG")
      --      dap.adapters.delve = {
      --        type = "server",
      --        host = "127.0.0.1",
      --        port = 38697,
      --      }
      --      dap.adapters.delve = function(callback, config)
      --        callback({
      --          type = "server",
      --          port = "${port}",
      --          executable = {
      --            command = "/home/caoyx/go/bin/dlv",
      --            args = { "dap", "-l", "127.0.0.1:${port}", "--log", "--log-output=dap", "--only-same-user=false" },
      --            detached = true,
      --          },
      --        })
      --      end
      --
      --      -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
      --      dap.configurations.go = {
      --        {
      --          type = "delve",
      --          name = "caoyxDebug",
      --          request = "launch",
      --          program = "${file}",
      --          outputMode = "remote",
      --        },
      --      }
    end,
  },
}
