- [ ] "help alphabet" returns the original list rather than my customized keys list. fix that
    - maybe helpful: https://github.com/splondike/talon_mystuff/blob/main/keys.py
- [ ] consider combining keys lists into a single file
- [ ] test out punctuation words to see what works with the new speech engine
- [ ] continue chaosparrot tutorials to discover new issues and remember commands https://chaosparrot.github.io/talon_practice/lessons/cursor_navigation.html

fix snap screen

fix hissy

2024-03-23 18:30:30.097 ERROR cb error topic="pop" cb=on_pop
    9:               talon/noise.py:21 | 
    8:               talon/noise.py:57 | 
    7: --------------------------------# [stack splice]
    6:  talon/scripting/dispatch.py:134| # 'pop' user.community.tremol.pop:on_pop()
    5: user/community/tremol/pop.py:26 | actions.user.mouse_toggle_control_mous..
    4:                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    3:   talon/scripting/actions.py:62 | 
    2:   talon/scripting/actions.py:156| 
    1:   talon/scripting/actions.py:152| 
KeyError: "Action 'user.mouse_toggle_control_mouse' is not declared."

2024-03-23 18:30:45.440 ERROR cb error topic="hiss" cb=on_hiss
    9:                       talon/noise.py:21 | 
    8:                       talon/noise.py:55 | 
    7: ----------------------------------------# [stack splice]
    6:          talon/scripting/dispatch.py:134| # 'hiss' user.community.tremol.hiss:on_hiss()
    5:        user/community/tremol/hiss.py:113| actions.user.mouse_scroll_down_continu..
    4:                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    3:           talon/scripting/actions.py:88 | 
    2: user/community/plugin/mouse/mouse.py:172| scroll_amount = setting_mouse_continuous_scroll_amount.get()
    1:                                                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
NameError: name 'setting_mouse_continuous_scroll_amount' is not defined