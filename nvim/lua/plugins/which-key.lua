return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>h"] = {
          name = "+harpoon",
          h = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "harpoon menu" },
          a = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "harpoon add" },
          n = { "<cmd>lua require('harpoon.ui').nav_next()<CR>", "harpoon next" },
          p = { "<cmd>lua require('harpoon.ui').nav_prev()<CR>", "harpoon prev" },
        },
      },
    },
  },
}
