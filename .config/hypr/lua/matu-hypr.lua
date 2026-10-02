local M = {}

function M.get_colors()
	local cache_path = os.getenv("HOME") .. "/.cache/matugen/hypr/hyprcolors.lua"

	local success, hyprcolors = pcall(dofile, cache_path)
	if not success then
		return {}
	end
	return hyprcolors
end

return M
