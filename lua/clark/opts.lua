local options = {
  number = true,
  relativenumber = true,
  termguicolors = true,

  shiftwidth = 2,
  expandtab = true,
  tabstop = 2,
  softtabstop = 2,

  cul = true,
  wrap = false,
  
  scrolloff = 4,
  sidescrolloff = 4,

  encoding = 'utf-8',
  fileencoding = 'utf-8',

  ignorecase = true,
  smartcase = true,
  incsearch = true,
  hlsearch = false,

  splitright = true,
  splitbelow = true,
}

for k,v in pairs(options) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
