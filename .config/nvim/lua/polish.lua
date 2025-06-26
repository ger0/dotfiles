-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

require("astrotheme").setup({
  style = {
    transparent = true,         -- Bool value, toggles transparency.
    inactive = false,             -- Bool value, toggles inactive window color.
    float = true,                -- Bool value, toggles floating windows background colors.
    neotree = false,              -- Bool value, toggles neo-trees background color.
    border = true,               -- Bool value, toggles borders.
    title_invert = true,         -- Bool value, swaps text and background colors.
    italic_comments = true,      -- Bool value, toggles italic comments.
    simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
  },
})

vim.cmd("colorscheme astrotheme")
vim.cmd("highlight CursorLine guibg=#26343f")
vim.cmd("set cursorline")
