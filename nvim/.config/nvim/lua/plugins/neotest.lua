return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-vitest")({
          is_test_file = function(file_path)
            -- only run tests in __tests__ directory
            return string.match(file_path, "__tests__")
          end,
        })
      )
    end,
  },
}
