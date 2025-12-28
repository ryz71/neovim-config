
vim.opt.clipboard = "unnamedplus"     
vim.opt.termguicolors = true          


vim.opt.number = true
vim.opt.relativenumber = true

--plugins--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({
        render = "background"     
        
            
      })
    end,
  },

}, {})



vim.cmd("colorscheme default")

--colors--
vim.api.nvim_set_hl(0, "Normal", {bg = "#060606"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#060606"})
vim.api.nvim_set_hl(0, "Folded", {bg = "#060606"})

vim.opt.guifont = "DM Mono:h14"


