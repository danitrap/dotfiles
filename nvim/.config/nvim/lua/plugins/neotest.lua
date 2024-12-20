return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
      "fredrikaverpil/neotest-golang",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {
          is_test_file = function(file_path)
            -- only run tests in __tests__ directory
            return string.match(file_path, "__tests__")
          end,
        },
        ["neotest-golang"] = {
          testify_enabled = true,
        },
      },
    },
  },
}
