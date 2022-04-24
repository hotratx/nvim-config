-- vim.g.neon_style = 'dark'
-- vim.g.material_style = 'oceanic'
vim.g.material_style = "darker"
local colorscheme = "material"
-- vim.cmd("colorscheme sonokai")

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
