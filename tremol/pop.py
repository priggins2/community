# combining my old scripts with https://github.com/C-Loftus/my_talon_scripts/blob/master/noises/noises.py

from talon import Module, actions, noise, ctrl, settings
from talon_plugins import eye_mouse, eye_zoom_mouse

pop_lock= False

mod = Module()
mod.mode("pop_to_control_mouse", "mode for commands that are available only when pop to control_mouse is active")
# actions.mode.disable('user.pop_to_control_mouse')
# actions.mode.enable('user.pop_to_control_mouse')

@mod.action_class
class Actions:
    def toggle_pop_to_control_mouse():
        """toggle the pop mouse mode"""
        global pop_lock
        pop_lock = not pop_lock


def on_pop(active: bool):
    global pop_lock

    if not pop_lock:
        print('I heard a pop')
        actions.user.mouse_toggle_control_mouse()

noise.register("pop", on_pop)

