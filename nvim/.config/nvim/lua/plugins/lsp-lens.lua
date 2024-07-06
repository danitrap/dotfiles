return {
  "VidocqH/lsp-lens.nvim",
  event = "BufRead",
  opts = {
    include_declaration = true,
    sections = {
      definition = false,
      references = true,
      implementation = false,
    },
  },
}
