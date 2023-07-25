local M = {}


M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = true,
    },
  },
}

return M
