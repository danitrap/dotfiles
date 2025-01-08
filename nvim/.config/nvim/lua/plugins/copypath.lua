return {
  "elliotxx/copypath.nvim",
  config = function()
    require("copypath").setup({
      mapping = "<leader>y",
    })
  end,
}
