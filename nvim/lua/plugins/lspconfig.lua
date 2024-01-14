return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          on_attach = function(client, bufnr)
            require("twoslash-queries").attach(client, bufnr)
          end,
        },
      },
    },
  },
}
