local M = {}

function M.cowboy()
	local count = 0
	local timer
	local notification_id

	for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
		local map = key

		vim.keymap.set("n", key, function()
			-- Intentional count motion like 10j
			if vim.v.count > 0 then
				count = 0
				return map
			end

			count = count + 1

			if timer then
				timer:stop()
			end

			-- Unlock after 2 seconds of not using the cowboy keys.
			timer = vim.defer_fn(function()
				count = 0
				notification_id = nil
			end, 2000)

			if count >= 10 then
				if not notification_id then
					notification_id = vim.notify("Hold it Cowboy! 🤠", vim.log.levels.WARN, {
						title = "Warning",
						replace = notification_id,
						keep = function()
							return count >= 10
						end,
					})
				end

				return ""
			end

			return map
		end, {
			expr = true,
			silent = true,
		})
	end
end

return M
