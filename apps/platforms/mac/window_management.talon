# adapted from nriley/knausj_talon

os: mac
-
(app next | swick): key(cmd-tab)
# app hide | apide: app.window_hide()
# app hide others: app.window_hide_others()
# app quit: key(cmd-q)
full screen: key(cmd-ctrl-f)
# window close all: key(cmd-alt-w)
# window minimize: key(cmd-m)
window zoom: key(cmd-ctrl-z)

# XXX unlike app Exposé, this is not keyboard navigable
# window switch: user.launch_bundle('com.apple.exposelauncher')
window switch: key(ctrl-down)
mission switch: key(ctrl-up)