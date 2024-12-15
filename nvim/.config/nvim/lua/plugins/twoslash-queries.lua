return {
  {
    "marilari88/twoslash-queries.nvim",
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = function(_, opts)
          local attach = function(client, bufnr)
            require("twoslash-queries").attach(client, bufnr)
          end
          opts["servers"]["vtsls"]["on_attach"] = attach
          opts["servers"]["tsserver"]["on_attach"] = attach
        end,
      },
    },
    ft = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },
}
