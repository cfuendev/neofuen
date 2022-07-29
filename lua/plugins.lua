return require('packer').startup(function()
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
	 use 'sheerun/vim-polyglot'
	 use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'}
	 use 'wbthomason/packer.nvim'
	 use 'andweeb/presence.nvim'
	 use 'vim-airline/vim-airline'
	 use 'vim-airline/vim-airline-themes'
	 use "rebelot/kanagawa.nvim"
	 use {'neoclide/coc.nvim', branch = 'release'}
	 use 'lervag/vimtex'
	 use({ "iamcco/markdown-preview.nvim",
	 	run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" },
	 })
 end)
