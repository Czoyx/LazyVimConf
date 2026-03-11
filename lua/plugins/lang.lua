return {
  -- Mason: ensure LSP servers and tools are installed
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- yaml
        "yaml-language-server",
        "prettier", -- yaml/helm formatter
        -- helm
        "helm-ls",
        -- go
        "gopls",
        "goimports",
        "golangci-lint",
        "delve",
      })
    end,
  },

  -- Treesitter: ensure parsers are installed
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "yaml",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "helm",
      })
    end,
  },
}
