--[[ Docstring

    Widget to check the weather periodically

    (c) Copyright 2023, Abiel Mendes (<https://github.com/paodelonga>)
    https://github.com/paodelonga/awesome-widgets

--]]

-- widgets.weather

local async = require("lain.helpers").async
local newtimer = require("lain.helpers").newtimer
local wibox = require("wibox")
local fontfg = require("lain").util.markup.fontfg

local function Widget(arguments)
    local Weather = {
        widget = wibox.widget({
            layout = wibox.layout.align.horizontal,
            {
                id = "wtextbox",
                widget = wibox.widget.textbox,
            },
        }),
    }

    local args = arguments or {}
    local timeout = args.timeout or 900
    local font = args.font or { name = "Noto Mono 9", color = "#FAFAFA" }
    local command = "curl -s https://wttr.in/?format=%t"

    local function Update()
        async(command, function(temp)
            Weather.widget
                :get_children_by_id("wtextbox")[1]
                :set_markup(fontfg(font.name, font.color, temp))
        end)
    end

    newtimer("awesome-widgets.weather", timeout, Update)
    return Weather.widget
end

return Widget

--[>D]
