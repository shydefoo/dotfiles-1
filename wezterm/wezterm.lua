local wezterm = require("wezterm")

local solarized = {
	colors = {
		foreground = "#586e75",
		background = "#fdf6e3",
		brights = { "#073642", "#dc322f", "#859900", "#b58900", "#268bd2", "#d33682", "#2aa198", "#eee8d5" },
		ansi = { "#002b36", "#cb4b16", "#586e75", "#657b83", "#839496", "#6c71c4", "#93a1a1", "#fdf6e3" },
	},
}
-- Reload the configuration every minute
wezterm.time.call_after(60, function()
	wezterm.reload_configuration()
end)

local M = {
	term = "wezterm",
	font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Medium" }),
	font_size = 12.0,
	-- color_scheme = "Builtin Solarized Light",
	-- color_scheme = "Builtin Solarized Dark",
	-- color_scheme = "Github",
	-- color_scheme = "Ayu Mirage",
	-- colors = solarized.colors,
	-- flipped solarized config
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	audible_bell = "Disabled",
}

local get_colors = function(config, time)
	if 7 < time.hour and time.hour <= 10 then
		config.color_scheme = "dawnfox"
	elseif 10 < time.hour and time.hour <= 16 then
		config.color_scheme = "dayfox"
	elseif 16 < time.hour and time.hour <= 20 then
		config.color_scheme = "duskfox"
	else
		config.color_scheme = "nightfox"
	end
	return config
end

M = get_colors(M, os.date("*t"))
return M
