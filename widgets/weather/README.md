<p align="center">
  <img src="./docs/awesome64.png" width="200" alt="Awesome Window Manager">
</p>

# :sun_behind_large_cloud: <samp>Weather</samp>
<img src="./docs/screenshot.png" alt="Widget Preview" width="128">

A simple way to ~~display~~`curl` the weather of your current region in your bar using just [wttr.in](https://github.com/chubin/wttr.in).<br>

---

### :bookmark_tabs: <samp>Table of Contents</samp>
- [:wrench: Dependencies](#wrench-dependencies)
- [:rocket: Installation](#rocket-installation)
- [:gear: Configuration](#gear-configuration)
- [:bulb: Contributors](#bulb-contributors)
- [:bust_in_silhouette: Credits](#bust_in_silhouette-credits)

---

### :wrench: <samp>Dependencies</samp>

|                                Name                                |                                         Description                                   |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------- |
|               [`curl`](https://github.com/curl/curl)               |            A command-line tool for transferring data specified with URL syntax.       |
|       [`awesome-git`](https://github.com/awesomewm/awesome)        |                      Highly configurable framework window manager.                    |
| [`internet access`](https://en.wikipedia.org/wiki/Internet_access) |                         We all know and you know what is that.                        |
|             [`lain`](https://github.com/lcpz/lain)                 | Provides alternative layouts, asynchronous widgets and utility functions for Awesome. |

---

### :rocket: <samp>Installation</samp>
Implementing this widget is as simple as peeling a banana :banana:. <br>

1. Clone this repository and copy the files to the Awesome WM configuration directory. eg:

```sh
git clone https://github.com/paodelonga/awesome-widgets.git
cp -r awesome-widgets/* ~/.config/awesome/
```

2. Then add the following lines to your [rc.lua](https://awesomewm.org/apidoc/documentation/07-my-first-awesome.md.html#Explore_Awesome)
 
```lua
-- Importing the widget
local widgets = require("widgets")

-- Configure the Widget
local weather = widgets.weather({
    timeout = 0,
    font = {
        name = "Font Name",
        color = "HEX Color Code"
    }
})
-- Add the Widget to your Wibar
s.wibar:setup({
    weather
})

--[>D]
```

> Check the [configuration](#gear-configuration) category to learn more about the widget's parameters and settings.
    
3. Then go to the [init.lua](./init.lua) file and uncomment the following line

	```diff
	 -- To activate a Widget move the line out of the comment block.
	return {
		--[[
	-   weather = require("widgets.weather")
		--]]
    +   weather = require("widgets.weather")
	}

	 --[>D]
	```

Now the widget has been installed, to initialize just [restart your environment](https://awesomewm.org/apidoc/documentation/07-my-first-awesome.md.html#Wrapping_up).

---

### :gear: <samp>Configuration</samp>

#### :bookmark_tabs: <samp>Table with parameters</samp>

|   Parameter  |                 Description                   |                              Type                          |     Value     |
| ------------ | --------------------------------------------- | ---------------------------------------------------------- | ------------- |
|   `timeout`  |           Check execution interval            | [`number`](https://www.lua.org/manual/5.3/manual.html#2.1) |   `seconds`   |
|    `font`    | Table containing information about the source | [`table`](https://www.lua.org/manual/5.3/manual.html#2.1)  |    `table`    |
|  `font.name` |          Name of the font to be used          | [`string`](https://www.lua.org/manual/5.3/manual.html#2.1) | `font-family` |
| `font.color` |              Color of the font                | [`string`](https://www.lua.org/manual/5.3/manual.html#2.1) |  `hex color`  |

#### :gear: <samp>Applying parameters</samp>

Here below is an example configuration

```lua
-- Configure the Widget
local weather = weather_widget({
    timeout = 900, -- Check execution interval in seconds
    font = { -- Table containing information about the source
        name = "Hack Nerd Font Regular 9", -- Name of the font to be used
        color = "#FAFAFA" -- Color of the font
    }
})

--[>D]
```

---

### :bulb: <samp>Contributors</samp>
<a href="https://github.com/paodelonga/awesome-widgets/graphs/contributors">
    <img src="https://contrib.rocks/image?repo=paodelonga/awesome-widgets"/>
</a>

---

### :bust_in_silhouette: <samp>Credits</samp>
- [Paodelonga](https://github.com/paodelonga/)
- thanks to wttr.in [contributors](https://github.com/chubin/wttr.in/graphs/contributors)<br>

[Back to top](#readme)

<!--
    --[>D]
-->
