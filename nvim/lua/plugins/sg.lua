return {
  "sourcegraph/sg.nvim",
  cmd = {
    "CodyAsk",
    "CodyChat",
    "CodyTask",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    use_cody = true,
  },
}
