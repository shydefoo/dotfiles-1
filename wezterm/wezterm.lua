local wezterm = require("wezterm")

local solarized = {
	colors = {
		foreground = "#586e75",
		background = "#fdf6e3",
		brights = { "#073642", "#dc322f", "#859900", "#b58900", "#268bd2", "#d33682", "#2aa198", "#eee8d5" },
		ansi = { "#002b36", "#cb4b16", "#586e75", "#657b83", "#839496", "#6c71c4", "#93a1a1", "#fdf6e3" },
	},
}
-- Reload the configuration every 10 minute
wezterm.time.call_after(600, function()
	wezterm.reload_configuration()
end)

local settings = {
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
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

local get_colors = function(x, time)
	if 7 <= time.hour and time.hour <= 9 then
		-- 0700 to 0959
		x.color_scheme = "dawnfox"
	elseif 10 <= time.hour and time.hour <= 15 then
		-- 1000 to 1559
		x.color_scheme = "dayfox"
	elseif 16 <= time.hour and time.hour <= 19 then
		-- 1600 to 1959
		x.color_scheme = "duskfox"
	else
		x.color_scheme = "nightfox"
	end
	return x
end

for k,v in pairs(settings) do config[k] = v end

config = get_colors(config, os.date("*t"))
return config
