return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = function()
      return {
        flavour = "macchiato",
        transparent_background = true,
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
