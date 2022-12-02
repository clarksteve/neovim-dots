local present, ts = pcall(require, 'nvim-treesitter.configs')
if not present then
  return
end

ts.setup({
  ensure_installed = { "lua" },
  auto_install = true,
  highlight = {
    enable = true,
  }
})
