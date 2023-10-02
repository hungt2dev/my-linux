vim.opt.termguicolors = true
-- vim.opt.list = true
local highlight = {
  "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#ECEFF4" })
end)
require("ibl").setup {
  indent = { char = "│" },
  scope = {
    enabled = true,
    show_start = false,
    highlight = highlight,
    char = "│",
  },
}
