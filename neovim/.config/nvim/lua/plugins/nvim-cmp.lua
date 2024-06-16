return {
  "nvim-cmp",
  keys = {
    {
      "<Tab>",
      function()
        local isCodeiumActive = vim.b._codeium_completions
        local isSnippetActive = vim.snippet.active({ direction = 1 })

        if isSnippetActive then
          return "<cmd>lua vim.snippet.jump(1)<cr>"
        end

        if isCodeiumActive then
          return vim.fn["codeium#Accept"]()
        end

        return "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i" },
    },
  },
}
