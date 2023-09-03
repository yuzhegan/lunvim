return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		vim.notify = notify
		notify.setup({
			background_colour = "NotifyBackground",
			fps = 20,
			level = 2,
			minimum_width = 30,
			render = "compact",
			stages = "fade",
			timeout = 200,
			top_down = true

		})
	end
}
