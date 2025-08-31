return {
  { -- Setup LSP untuk Go
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              memoryMode = "DegradeClosed",
              completeUnimported = false,
              semanticTokens = true,
              analyses = {
                unusedparams = false,
                unreachable = false,
              },
            },
          },
        },
      },
    },
  },
}
