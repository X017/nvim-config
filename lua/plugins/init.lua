return {
    {'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' }},{'nvim-telescope/telescope.nvim', tag = '0.1.8',dependencies = { 'nvim-lua/plenary.nvim' }},
    {"williamboman/mason.nvim", config = function ()
	    require('mason').setup({})
    end},
    {"onsails/lspkind.nvim"},
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000},
    {"nvimdev/dashboard-nvim"},
    {'romgrk/barbar.nvim',
    config = function ()
    	require('barbar').setup()
    end},
    {'windwp/nvim-autopairs',
    	config = true
    },
}

