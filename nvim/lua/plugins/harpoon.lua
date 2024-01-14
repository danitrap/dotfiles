return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  event = "BufRead",
  config = function()
    local harpoon = require("harpoon")
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end, { desc = "Harpoon add" })
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
  end,
}
