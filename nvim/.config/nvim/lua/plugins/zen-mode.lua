return {
  "folke/zen-mode.nvim",
  dependencies = {
    "folke/twilight.nvim",
  },
  cmd = "ZenMode",
  opts = {
    window = {
      backdrop = 0.55,
      height = 0.9,
      width = 70,
      options = {
        signcolumn = "no",
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },
      tmux = { enabled = true },
      kitty = {
        enabled = true,
        font = "+4",
      },
    },
  },
}
