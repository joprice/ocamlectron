type t = Electron_plumbing.ElectronMain.t

let obj = Electron_api.Tools.require "electron"

let app = obj##.app

let make_browser_window
    ?width
    ?height
    ?position
    ?use_content_size
    ?center
    ?min_width
    ?min_height
    ?max_width
    ?max_height
    ?resizable
    ?movable
    ?minimizable
    ?maximizable
    ?closable
    ?focusable
    ?always_on_top
    ?fullscreen
    ?fullscreenable
    ?simple_fullscreen
    ?skip_taskbar
    ?kiosk
    ?title
    ?show
    ?frame
    ?parent
    ?modal
    ?accept_first_mouse
    ?disable_auto_hide_cursor
    ?auto_hide_menu_bar
    ?enable_larger_than_screen
    ?background_color
    ?has_shadow
    ?opacity
    ?dark_theme
    ?transparent
    ?_type
    ?(title_bar_style = `Default)
    ?fullscreen_window_title
    ?thick_frame
    ?(vibrancy = `AppearanceBased)
    ?zoom_to_page_width
    ?tabbing_identifier
    () =
  Electron_api.BrowserWindow.make ?width ?height ?position ?use_content_size
    ?center ?min_width ?min_height ?max_width ?max_height ?resizable ?movable
    ?minimizable ?maximizable ?closable ?focusable ?always_on_top ?fullscreen
    ?fullscreenable ?simple_fullscreen ?skip_taskbar ?kiosk ?title ?show ?frame
    ?parent ?modal ?accept_first_mouse ?disable_auto_hide_cursor
    ?auto_hide_menu_bar ?enable_larger_than_screen ?background_color ?has_shadow
    ?opacity ?dark_theme ?transparent ?_type ~title_bar_style
    ?fullscreen_window_title ?thick_frame ~vibrancy ?zoom_to_page_width
    ?tabbing_identifier obj
