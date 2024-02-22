return {
	{
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker").setup({ -- for changing icons & mappings
			})

			vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.
		end,
	},
}
