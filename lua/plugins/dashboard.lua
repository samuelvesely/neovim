return {
  "goolord/alpha-nvim",
  event = "VimEnter",          -- make Alpha start on launch
  opts = function(_, db)       -- db = dashboard theme table
    local logo = [[
     _   _           _     
    | \ | | ___   __| | ___
    |  \| |/ _ \ / _` |/ _ \
    | |\  | (_) | (_| |  __/
    |_| \_|\___/ \__,_|\___|
    ]]
    db.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}