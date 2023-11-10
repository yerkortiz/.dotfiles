local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local tokyonight = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

local treesitter = {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    priority = 1000,
    opts = {},
}

local mason = {
    "williamboman/mason.nvim",
    lazy = true,
    priority = 1000,
    opts = {},
}

local lsp = "neovim/nvim-lspconfig"

local vimtex = 'lervag/vimtex'

local cmp_omni = "hrsh7th/cmp-omni"

local cmp = {
    "hrsh7th/nvim-cmp",
    lazy = false,
    priority = 1000,
    opts = {},
}

local cmp_lsp = "hrsh7th/cmp-nvim-lsp"

local cmp_buffer = "hrsh7th/cmp-buffer"

local cmp_path = "hrsh7th/cmp-path"

local luasnip = "L3MON4D3/LuaSnip"

local cmp_luasnip = "saadparwaiz1/cmp_luasnip"

local plenary = "nvim-lua/plenary.nvim"

local telescope = "nvim-telescope/telescope.nvim"

require("lazy").setup({
    tokyonight,
    treesitter,
    mason,
    lsp,
    vimtex,
    cmp,
    cmp_lsp,
    cmp_omni,
    cmp_buffer,
    cmp_path,
    luasnip,
    cmp_luasnip,
    plenary,
    telescope,
})


