return {
  {
    "folke/edgy.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.laststatus = 3
      vim.opt.splitkeep = "screen"

      vim.api.nvim_create_autocmd("LspAttach", {
        pattern = "*",
        callback = function()
          require("edgy").open("left")
        end,
      })
    end,
    dependencies = {
      {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        init = function()
          vim.api.nvim_create_autocmd("BufReadPost", {
            pattern = "*",
            callback = function()
              require("trouble").refresh()
            end,
          })
        end,
      },
    },
    opts = {
      options = {
        left = {
          size = 35,
        },
      },
      close_when_all_hidden = true,
      bottom = {
        "Trouble",
        { ft = "qf", title = "QuickFix" },
        {
          ft = "help",
          size = { height = 20 },
          -- only show help buffers
          filter = function(buf)
            return vim.bo[buf].buftype == "help"
          end,
        },
        { ft = "spectre_panel", size = { height = 0.4 } },
      },
      left = {

        -- Neo-tree filesystem always takes half the screen height
        {
          ft = "trouble",
          pinned = true,
          title = "Sidebar",
          filter = function(_, win)
            return vim.w[win].trouble.mode == "symbols"
          end,
          open = "Trouble symbols position=left focus=false filter.buf=0",
          size = { height = 0.6 },
        },
        {
          title = "Neo-Tree",
          ft = "neo-tree",
          filter = function(buf)
            return vim.b[buf].neo_tree_source == "filesystem"
          end,
          size = { height = 0.5 },
        },
      },
      right = {
        "CopilotChat",
      },
    },
  },
}
