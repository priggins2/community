# combining my old scripts with https://github.com/C-Loftus/my_talon_scripts/blob/master/noises/noises.py

from talon import Context, Module, actions, noise, ctrl, settings, cron
from talon_plugins import eye_mouse, eye_zoom_mouse
import time

hiss_lock= True
pop_lock= True

ctx = Context()
ctx.matches = r"""
os: mac
"""
mod = Module()
mod.mode("hiss_to_scroll", "mode for commands that are available only when hiss to scroll is active")
# actions.mode.disable('user.hiss_to_scroll')
# actions.mode.enable('user.hiss_to_scroll')

# this setting is initialized in mouse.py, though with a different default there
setting_mouse_continuous_scroll_amount = mod.setting("mouse_continuous_scroll_amount", type=int, default=350)

ORIGINAL_SPEED = setting_mouse_continuous_scroll_amount.get()
MULTIPLIER = 3 # how quickly to increase or decrease the scroll speed

ctx.settings = {"user.mouse_continuous_scroll_amount": ORIGINAL_SPEED}

@mod.action_class
class Actions:
    def toggle_hiss_to_scroll():
        """toggle the hiss mouse mode"""
        global hiss_lock
        hiss_lock = not hiss_lock

    def default_scroll():
        """return the scroll speed to the original value"""
        ctx.settings['user.mouse_continuous_scroll_amount'] = ORIGINAL_SPEED

    def reverse_scroll():
        """reverse the direction of scroll"""
        current_value = setting_mouse_continuous_scroll_amount.get()
        ctx.settings['user.mouse_continuous_scroll_amount'] = -1 * current_value

    def faster_scroll():
        """increase the scroll speed"""
        current_value = setting_mouse_continuous_scroll_amount.get()
        ctx.settings['user.mouse_continuous_scroll_amount'] = MULTIPLIER * current_value
        print(ctx.settings['user.mouse_continuous_scroll_amount'])
        print(setting_mouse_continuous_scroll_amount.get())

    def slower_scroll():
        """decrease the scroll speed"""
        current_value = setting_mouse_continuous_scroll_amount.get()
        ctx.settings['user.mouse_continuous_scroll_amount'] = MULTIPLIER * current_value

# rate = "50ms"
# key_hold = "down"
# last_pop = time.time()
# scrolling = False

# def on_pop_down(active: bool):
#     global rate
#     global last_pop 
#     global key_hold

#     slower = "100ms"
#     faster = "25ms"

#     if time.time() - last_pop < 0.5:
#         key_hold = "up"
#         rate = faster
#         return
#     else:
#         if rate == faster or key_hold == "up":
#             rate = slower
#         else:
#             rate = faster
#         key_hold = "down"

#     last_pop = time.time()
#     hold_update()

# def hold_update():
#     global scroll_job, scrolling
#     if scrolling:
#         cron.cancel(scroll_job)
#         scrolling = False
#         on_hiss_down(True)

# def on_hiss_down(active: bool):
#     global rate
#     global scroll_job
#     global key_hold
#     global scrolling

#     # if active:
#     #     scroll_job = cron.interval(rate, lambda: actions.key(key_hold))
#     # else:
#     #     cron.cancel(scroll_job)

#     if active:
#         if not scrolling:
#             scrolling = True
#             scroll_job = cron.interval(rate, lambda: actions.key(key_hold))
#         else:
#             scrolling = False
#             cron.cancel(scroll_job)

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
# noise.register("hiss", on_hiss_down)
# noise.register("pop", on_pop_down)
