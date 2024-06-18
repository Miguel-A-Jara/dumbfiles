return {
  "nvim-cmp",
  keys = {
    {
      "<Tab>",
      function()
        local suggestion = require("supermaven-nvim.completion_preview")
        local isSnippetActive = vim.snippet.active({ direction = 1 })

        if isSnippetActive then
          return "<cmd>lua vim.snippet.jump(1)<cr>"
        end

        if suggestion.has_suggestion() then
          return '<cmd>lua require("supermaven-nvim.completion_preview").on_accept_suggestion()<cr>'
        end

        return "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i" },
    },
  },
}
