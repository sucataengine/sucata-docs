sucata.window.set_window_size(960, 540) -- The game window size, in pixels
sucata.window.set_keep_aspect(1) -- Keep the aspect ratio of the game, if the window is resized, it will keep the aspect ratio of the game, and add black bars on the sides if necessary. (0 = off, 1 = keep aspect with bars, 2 = keep aspect with crop)
sucata.window.set_window_title("My First Game") -- The game window title
sucata.window.set_vsync(1) -- Active Vsync in your game, Vsync will cap the max frame rate (0 = off, 1 = on, higher values for specific intervals)
sucata.window.show_debug_info(true) -- Show debug info in the game, this will show the fps, and some other information about the game, this is useful for debugging and optimizing your game.
sucata.window.set_fullscreen(false) -- Set the game to fullscreen mode