key(fn:down):
    mode.disable("command")
    mode.enable("dictation")

key(fn:up):
    mode.disable("dictation")
    mode.enable("command")