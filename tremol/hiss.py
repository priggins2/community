# combining my old scripts with https://github.com/C-Loftus/my_talon_scripts/blob/master/noises/noises.py

from talon import Module, actions, noise, ctrl, settings
from talon_plugins import eye_mouse, eye_zoom_mouse

hiss_lock= True

mod = Module()
mod.mode("hiss_to_scroll", "mode for commands that are available only when hiss to scroll is active")

@mod.action_class
class Actions:
    def toggle_hiss_to_scroll():
        """toggle the hiss mouse mode"""
        global hiss_lock
        hiss_lock = not hiss_lock

    # def hiss_reverse_scroll():
    #     """reverse the direction of the hissing scroll"""
    #     pass


def on_hiss(active: bool):
    global hiss_lock

    if not hiss_lock:
        if active:
            actions.user.mouse_scroll_down_continuous()
            # print('hiss started')
        else:
            actions.user.mouse_scroll_stop()
            # print('hiss stopped')

noise.register("hiss", on_hiss)