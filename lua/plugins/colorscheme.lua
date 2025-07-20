
-- KANAGAWA
--
-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     opts = {
--       transparent = true,
--       dimInactive = false,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--     config = function(_, opts)
--       local kanagawa = require("kanagawa")
--       kanagawa.setup(opts)
--       kanagawa.load()

--       -- Make line numbers and cursor line background transparent
--       vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
--       vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })

--       -- Optional: also make the number of the current line transparent
--       vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
--     end,
--   },
-- }

-- NORDIC

return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        transparent_bg = true,
        override = {
          LineNr = { bg = "NONE" },
          CursorLine = { bg = "NONE" },
          CursorLineNr = { bg = "NONE" },
        },
      })
      require("nordic").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
}

-- GRUVBOX

-- return {
--   {
--     "ellisonleao/gruvbox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("gruvbox").setup({
--         transparent_mode = true, -- enable transparency
--       })
--       vim.cmd("colorscheme gruvbox")
--     end,
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
