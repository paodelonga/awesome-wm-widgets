--[[ Docstring

    Widget to check the weather periodically

    (c) Copyright 2023, Abiel Mendes (<https://github.com/paodelonga>)
    https://github.com/paodelonga/awesome-widgets

--]]

-- widgets.Weather

local async = require("lain.helpers").async
local newtimer = require("lain.helpers").newtimer
local wibox = require("wibox")
local fontfg = require("lain").util.markup.fontfg

local function Widget(arguments)
    local Weather = { widget = wibox.widget.textbox() }

    local args = arguments or {}
    local timeout = args.timeout or 900
    local font = args.font or { name = "Noto Mono 9", color = "#FAFAFA" }

    local command = "curl -s https://wttr.in/?format=%t"

    function Weather.Update()
        async(command, function(temp)
            Weather.widget:set_markup(fontfg(font.name, font.color, temp))
        end)
    end

    newtimer("awesome-widgets.weather", timeout, Weather.Update)
    return Weather
end

return Widget

--[>D]
