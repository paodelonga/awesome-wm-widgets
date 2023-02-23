<p align="center">
  <img src="./docs/awesome64.png" width="200" alt="Awesome Window Manager">
</p>

# :sparkles: <samp> Awesome Widgets :D </samp>

```css

I decided to do some widgets for AwesomeWM and so I thought in opening a repository, and here we are.
```

---

### :bookmark_tabs: <samp>Table of Contents</samp>
- [:bookmark_tabs: Widgets List](#bookmark_tabs-widgets-list)
- [:camera: Widgets Gallery](#camera-widgets-gallery)
- [:wrench: Dependencies](#wrench-dependencies)
- [:bulb: Contributors](#bulb-contributors)
- [:bust_in_silhouette: Credits](#bust_in_silhouette-credits)

---

### :bookmark_tabs: <samp>Widgets List</samp>

- [Weather](./widgets/weather/): A simple way to ~~display~~`curl` the weather of your current region in your bar using just [wttr.in](https://github.com/chubin/wttr.in).

---

### :camera: <samp>Widgets Gallery</samp>

|                    [Weather](./widgets/weather/)                    | 
| ----------------------------------------------------------- |
| ![Widget Gallery Screenshot](./widgets/weather/docs/screenshot.png) |

---

### :wrench: <samp>Dependencies</samp>

|                                Name                                |                                         Description                                   |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------- |
|               [`curl`](https://github.com/curl/curl)               |            A command-line tool for transferring data specified with URL syntax.       |
|       [`awesome-git`](https://github.com/awesomewm/awesome)        |                      Highly configurable framework window manager.                    |
| [`internet access`](https://en.wikipedia.org/wiki/Internet_access) |                         We all know and you know what is that.                        |

---

### :rocket: <samp>Installation </samp>
The implementation of widgets is simple and fast, just follow a few steps

1. Clone this repository and copy the files to the Awesome WM configuration directory. eg:

```sh
git clone https://github.com/paodelonga/awesome-widgets.git
cp --recursive --parents awesome-widgets/widgets/ ~/.config/awesome/
```
 
2. And then go to the [init.lua](./widgets/init.lua) file and uncomment the line referring to the required widget

```diff
 -- To activate a Widget, move the line outside the comment block.
return {
	--[[
-   widget_name = require("widgets.widget_name")
	--]]
+   widget_name = require("widgets.widget_name")
}

 --[>D]
```

> The installation of some widgets may vary, so check the widget folder for the correct installation method.

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
