return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      --[[      color_overrides = {
        mocha = {
          green = "#7a9d70",
          peach = "#d88f59",
          text = "#a1b1cc",
        },
      },]]
      --
      custom_highlights = function(colors)
        return {
          CmpGhostText = { fg = colors.overlay1, style = { "italic" } },
        }
      end,
    })
    vim.cmd("colorscheme catppuccin")
  end,
}
