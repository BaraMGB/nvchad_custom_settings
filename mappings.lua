local M = {}
-- In order to disable a default keymap, use
M.disabled = {
  n = {
      -- ["<leader>e"] = ""
  }
}

-- Your custom mappings
M.abc = {
  n = {
    ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"},
    ["<leader>e"] = {":NvimTreeToggle <CR>", "File Browser"},
    ["<leader>c"] = {":bd<CR>"},
    ["<S-Down>"] = { "v gj", "visual mode"},
    ["<leader>qn"] = {":qa!<cr>"},
    ["<leader>h"] = { ":ClangdSwitchSourceHeader<cr>", "switch header source" },
    ["<leader>t"] = {function() require("nvterm.terminal").new "horizontal"end, "New horizontal term",},
    ["gn"] = {function ()
       vim.diagnostic.goto_next({ border = "rounded"})
     end,
     "LSP Next Issue",},
  },
  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<S-Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
    ["<S-Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
  },

  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    -- ...
  }
}

return M
