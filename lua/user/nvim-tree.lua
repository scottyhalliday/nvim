-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  hijack_directories = {
      enable = true,
      auto_open = true,
  },
  diagnostics = {
      enable = false,
  },
  update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
  },
  git = {
      enable = true,
      ignore = true,
      timeout = 500,
  },
  actions = {
      open_file = {
        quit_on_open = true,
      }
  },  
  renderer = {
    highlight_git = true,
    root_folder_modifier = ":t",
    icons = {
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
        },
        glyphs = {
            default = "",
            symlink = "",
            git = {
                unstaged = "",
                staged = "S",
                unmerged = "",
                renamed = "➜",
                deleted = "",
                untracked = "U",
                ignored = "◌",
            },
            folder = {
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
            },
        }
    }  },
  filters = {
    dotfiles = true,
  },
})