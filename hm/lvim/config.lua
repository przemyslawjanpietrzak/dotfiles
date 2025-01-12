lvim.plugins = {
  "gbprod/nord.nvim",
  "tpope/vim-fugitive",
  "mg979/vim-visual-multi",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
    "GRemove",
    "GRename",
    "Glgrep",
    "Gedit"
  },
  ft = {"fugitive"}
}

vim.o.termguicolors = true
lvim.colorscheme = "nord"
