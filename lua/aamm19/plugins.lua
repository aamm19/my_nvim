-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
  print('Installing lazy.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
  print('Done.')
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Telescope, fuzzy finder, src: https://github.com/nvim-telescope/telescope.nvim
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Kanagawa, theme, src: https://github.com/rebelot/kanagawa.nvim
    'rebelot/kanagawa.nvim',

    -- Treesitter, parsing library, src: https://github.com/nvim-treesitter/nvim-treesitter
    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },
    -- Treesitter Playground, parse visualizer, src: https://github.com/nvim-treesitter/playground
    'nvim-treesitter/playground',

    -- Undotree, tree-style change visualizer, src: https://github.com/mbbill/undotree
    'mbbill/undotree',
    -- Vim-fugitive, git inside vim, src: https://github.com/tpope/vim-fugitive
    'tpope/vim-fugitive',

    -- Gitsigns, adds git signs to beginning visual aid, src: https://github.com/lewis6991/gitsigns.nvim
    'lewis6991/gitsigns.nvim',

    -- Indent blankline, indentation guides to all lines, src: https://github.com/lukas-reineke/indent-blankline.nvim
    'lukas-reineke/indent-blankline.nvim',

    -- Comment, commenting plugin, src: https://github.com/numToStr/Comment.nvim
    'numToStr/Comment.nvim',

    -- Lualine, Statusline indicator, src: https://github.com/nvim-lualine/lualine.nvim
    'nvim-lualine/lualine.nvim',

    -- nvim-tree, tree-like filesystem explorer, src: https://github.com/nvim-tree/nvim-tree.lua
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    -- nvim-cmp, vim autocompletioin, src: https://github.com/hrsh7th/nvim-cmp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',

    -- LSP Shenanningans
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        -- TODO: Add all the language servers installed with mason:
        -- black
        -- emmet-ls
        -- lua-language-server
        -- pyright
        -- sonarlint-language-server
        -- clangd
        -- jdtls
        -- pylsp
        -- pyright-langserver
    },

    -- NvChad's nvterm
    'NvChad/nvterm',

    'tpope/vim-dadbod',
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
    -- The Legend's Database navigation and a UI for it
    {
        'tpope/vim-dadbod',
        opt = true,
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion",
        }
    }
}

opts = {}

require('lazy').setup({
    plugins,
    opts
})
