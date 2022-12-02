local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Colorscheme
  use({ 'overcache/NeoSolarized', config = vim.cmd[[colorscheme NeoSolarized]] })

  -- Syntaxing
  use({ 'nvim-treesitter/nvim-treesitter', event = { 'BufRead' }, config = function() require('clark.plugins.ts') end, })

  -- File Explorer
  use({ 'nvim-tree/nvim-web-devicons' })
  use({ 'nvim-tree/nvim-tree.lua', config = function() require('clark.plugins.nvimtree') end, cmd = { 'NvimTreeToggle' } })

  if packer_bootstrap then
    require('packer').sync()
  end
end)
