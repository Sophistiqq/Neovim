return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = {
					line = "<leader>/",
				},
				opleader = {
					line = "<leader>/",
				},
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
    lazy = true,
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"max397574/better-escape.nvim",
		config = function()
			require("better_escape").setup()
		end,
	},
}
