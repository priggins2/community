not mode: sleep
-
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
