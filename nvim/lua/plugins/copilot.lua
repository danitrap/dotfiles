return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "BufEnter",
  build = ":Copilot auth",
  opts = {
    suggestion = { auto_trigger = true },
  },
}
