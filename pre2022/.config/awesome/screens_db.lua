screens = {
	['default'] = {
		['connected'] = function (xrandrOutput)
			return '--auto'
			--return '--output ' .. xrandrOutput .. ' --auto --same-as eDP1'
			--return '--output ' .. xrandrOutput .. ' --auto --same-as eDP1'
		end,
		['disconnected'] = function (xrandrOutput)
			return '--output ' .. xrandrOutput .. ' --off --output eDP1 --auto'
		end
	},
	['55250827610'] = {
		['connected'] = function (xrandrOutput)
			return '--output ' .. xrandrOutput .. ' --auto --above eDP1'
		end,
		['disconnected'] = nil
	}
}

