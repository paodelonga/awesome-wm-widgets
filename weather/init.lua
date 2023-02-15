--[[ Docstring

    Widget to check the weather periodically

    * (c) 2023, Abiel Mendes (<https://github.com/paodelonga>)

--]]

-- widgets.Weather

local async = require("lain.helpers").async
local newtimer = require("lain.helpers").newtimer
local wibox = require("wibox")
local markup = require("lain").util.markup

local function marker(color, font, text)
    return markup(color, markup.font(font, text))
end

local function Widget(arguments)
    local Weather = { widget = wibox.widget.textbox() }

    local args = arguments or {}
    local timeout = args.timeout or 5
    local font = args.font or { name = "Noto Mono 9", color = "#FAFAFA" }

    local command = "curl -s https://wttr.in/?format=%t"

    function Weather.Update()
        async(command, function(temp)
            Weather.widget:set_markup(marker(font.color, font.name, temp))
        end)
    end

    newtimer("widget.weather", timeout, Weather.Update)
    return Weather
end

return Widget

-- [>D]
