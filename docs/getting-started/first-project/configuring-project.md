# Starting the Project

## Getting Started

First, make sure that the **Sucata Engine** is installed on your system.  
You can follow the installation guide on the [installation page](../installation.md).

To verify that Sucata is installed correctly, run the following command in your terminal:

```bash
sucata version
```

If the installation was successful, the engine version will be printed in the terminal.

Next, create a new folder for your project. Inside this folder, create a file called `main.lua`.
This file will be the **main entry point of your game**.

## Configuration

To configure the game window, you can use functions from `sucata.window`.

It is recommended to place these settings in a separate file called `config.lua`.

```lua
sucata.window.set_window_size(960, 540) -- Game window size in pixels
sucata.window.set_keep_aspect(1) -- Maintain aspect ratio when resizing the window
-- (0 = off, 1 = keep aspect with bars, 2 = keep aspect with crop)

sucata.window.set_window_title("My First Game") -- Window title
sucata.window.set_vsync(1) -- Enable VSync (0 = off, 1 = on, higher values for specific intervals)

sucata.window.show_debug_info(true) -- Display debug information such as FPS and engine stats
sucata.window.set_window_icon("src://icon.png") -- Window icon
sucata.window.set_fullscreen(false) -- Enable or disable fullscreen mode
```

> **Note**
> Due to limitations of [sokol](https://github.com/floooh/sokol), VSync will always remain enabled.

> **Tip**
> Remember to disable `sucata.window.show_debug_info()` when releasing your game.

Finally, load the configuration file inside `main.lua`:

```lua
require("config")
```
